Rails.application.routes.draw do
  get 'task/new'
  devise_for :users
  root to: 'pages#home'

  resources :tasks
  resources :offers do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
end
