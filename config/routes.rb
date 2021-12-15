Rails.application.routes.draw do
  get 'diaries/index'
  root to: "diaries#index"
end
