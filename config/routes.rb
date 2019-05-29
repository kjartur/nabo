Rails.application.routes.draw do
get 'pages/show'
get 'profiles/edit'
get 'profiles/update'
get 'task/new'

  devise_for :users
  root to: 'pages#home'
  resources :tasks, only: [ :new, :index, :create, :show ] do
    resources :offers, only: [ :new, :create ]
  end
  resources :offers, only: [ :index, :show ] do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
end
