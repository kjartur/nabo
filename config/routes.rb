Rails.application.routes.draw do
  get 'task/new'
  devise_for :users
  root to: 'pages#home'
  resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
end
