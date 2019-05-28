Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :tasks do
    resources :offers, only: [ :new, :create ]
  end
  resources :offers, only: [ :index, :show ] do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
end


