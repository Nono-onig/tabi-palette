class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_owned_tweet, only: [:edit, :update]


  # トップページ
  def index
    @tweets = Tweet.all

    # 投稿検索
    if params[:search].present?
      search = params[:search]

      @tweets = Tweet.where(
        "region LIKE ? OR place LIKE ? OR location LIKE ? OR cost LIKE ? OR comment LIKE ? OR recommendation LIKE ?",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%",
        "%#{search}%"
      )
    else
      @tweets = Tweet.all
    end


    # タグ検索
    if params[:tag_ids].present?
      @tweets = @tweets.joins(:tags)
                       .where(tags: { id: params[:tag_ids] })
                       .distinct
    end

    @tweets = @tweets.with_attached_image.preload(:tags).order(created_at: :desc)

    # 旅の準備ガイドがある国（トップページの一覧用）
    @countries = Country.order(:id)
  end


  # =========================
  # みんなの投稿一覧
  # =========================
  def all_posts
    @tweets = Tweet.with_attached_image.preload(:tags).order(created_at: :desc)
  end


  # =========================
  # 新規投稿
  # =========================
  def new
    @tweet = Tweet.new
  end


  # =========================
  # 投稿作成
  # =========================
  def create
    tweet = Tweet.new(tweet_params)

    tweet.user_id = current_user.id

    if tweet.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end


  # =========================
  # 投稿詳細
  # =========================
  def show
    @tweet = Tweet.find(params[:id])
  end


  # =========================
  # 投稿編集
  # =========================
  def edit
  end


  # =========================
  # 投稿更新
  # =========================
  def update
    # 写真を削除する場合
    if params[:remove_image] == "1"
      @tweet.image.purge
    end

    if @tweet.update(tweet_params)
      redirect_to tweet_path(@tweet)
    else
      render :edit, status: :unprocessable_entity
    end
  end


  # =========================
  # 投稿削除
  # =========================
  def destroy
    @tweet = Tweet.find(params[:id])

    if @tweet.user == current_user
      @tweet.destroy
    end

    redirect_to all_posts_tweets_path
  end


  # =========================
  # タグ追加
  # =========================
  def add_tag
    if params[:new_tag].present?
      unless Tag.exists?(name: params[:new_tag])
        Tag.create(name: params[:new_tag])
      end
    end

    redirect_to new_tweet_path
  end


  private

  # 自分の投稿のみ編集できるようにする
  def set_owned_tweet
    @tweet = Tweet.find(params[:id])
    redirect_to tweet_path(@tweet), alert: "自分の投稿のみ編集できます" unless @tweet.user == current_user
  end


  def tweet_params
    params.require(:tweet).permit(
      :region,
      :place,
      :location,
      :cost,
      :picture,
      :image,
      :comment,
      :recommendation,
      tag_ids: []
    )
  end
end
