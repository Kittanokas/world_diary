Rails.application.routes.draw do
  devise_for :users
  root to: "diaries#index"

  resources :diaries
  resources :users, only: :show  
  resources :maps, only: [:index]
end
