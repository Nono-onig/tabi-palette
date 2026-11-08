require "test_helper"

class TestsControllerTest < ActionDispatch::IntegrationTest
  test "診断ページに7つの質問が表示される" do
    get new_test_path
    assert_response :success
    assert_select ".quiz-step", 7
    assert_select "input[type=radio][name=?]", "test[question7]", 5
  end

  test "診断結果が表示され、国別ページへのリンクがある" do
    answers = {
      question1: "local", question2: "city,local", question3: "local",
      question4: "adventure,local", question5: "adventure,local",
      question6: "local", question7: "culture,local"
    }

    assert_difference("Test.count", 1) do
      post tests_path, params: { test: answers }
    end
    follow_redirect!
    assert_response :success
    assert_select ".result-country-name", "ベトナム"
    assert_select "a[href=?]", country_path(countries(:vietnam))
  end

  test "国のデータが無くても結果ページはエラーにならない" do
    get test_path(tests(:one))
    assert_response :success
  end
end
