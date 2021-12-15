Rails.application.routes.draw do
  get 'diaries/index'
  root to: "diaries#index"
  resources :diaries, only: :index
end
