class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id]) 
    @tweets = @user.tweets.with_attached_image.preload(:tags).order(created_at: :desc)
  end
end
