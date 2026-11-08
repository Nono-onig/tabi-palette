Rails.application.routes.draw do
  devise_for :users

  resources :tweets do
  collection do
    get :all_posts
  end
end

  resources :users, only: [:show]

  resources :countries, only: [:show]
  
  get "/tweets/all", to: "tweets#all", as: "all_tweets"

  post "/tweets/add_tag", to: "tweets#add_tag"
  
  root 'tweets#index'

  resources :tests
end