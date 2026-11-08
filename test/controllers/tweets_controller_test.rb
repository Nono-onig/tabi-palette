require "test_helper"

class TweetsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "トップページが表示される" do
    get root_path
    assert_response :success
    assert_select "a[href=?]", new_test_path
    assert_select ".post-card", minimum: 1
  end

  test "キーワード検索ができる" do
    get root_path, params: { search: "ワット" }
    assert_response :success
    assert_select ".post-card", 1
  end

  test "タグ検索ができる" do
    get root_path, params: { tag_ids: [ tags(:one).id ] }
    assert_response :success
    assert_select ".post-card", 1
  end

  test "みんなの投稿一覧が表示される" do
    get all_posts_tweets_path
    assert_response :success
    assert_select ".post-card", 2
  end

  test "投稿詳細が表示される" do
    get tweet_path(tweets(:one))
    assert_response :success
    assert_select "h1", "タイ"
  end

  test "未ログインでは新規投稿ページに入れない" do
    get new_tweet_path
    assert_redirected_to new_user_session_path
  end

  test "ログインすると投稿できる" do
    sign_in users(:one)
    get new_tweet_path
    assert_response :success

    assert_difference("Tweet.count", 1) do
      post tweets_path, params: { tweet: { place: "韓国", region: "アジア", tag_ids: [ tags(:one).id ] } }
    end
  end

  test "自分の投稿は編集できる" do
    sign_in users(:one)
    get edit_tweet_path(tweets(:one))
    assert_response :success

    patch tweet_path(tweets(:one)), params: { tweet: { place: "タイ（バンコク）" } }
    assert_redirected_to tweet_path(tweets(:one))
    assert_equal "タイ（バンコク）", tweets(:one).reload.place
  end

  test "他人の投稿は編集できない" do
    sign_in users(:two)
    get edit_tweet_path(tweets(:one))
    assert_redirected_to tweet_path(tweets(:one))
  end
end
