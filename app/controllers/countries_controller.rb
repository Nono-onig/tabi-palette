class CountriesController < ApplicationController
  def show
    @country = Country.find(params[:id])
    @tweets = @country.tweets.with_attached_image.preload(:tags).order(created_at: :desc)

    # locale=en の場合は英語版を表示
    @english = params[:locale] == "en"
  end
end
