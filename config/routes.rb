Rails.application.routes.draw do
  devise_for :users
  # get 'diaries/index'
  root to: "diaries#index"
  resources :diaries, only: [:index, :new, :create]
  # resources :users
end
