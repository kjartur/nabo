Rails.application.routes.draw do
<<<<<<< HEAD
  get 'profiles/edit'
  get 'profiles/update'
  get 'task/new'
  devise_for :users
  root to: 'pages#home'

  resources :tasks
  resources :offers do
=======
  devise_for :users
  root to: 'pages#home'
  resources :tasks, only: [ :new, :index ] do
    resources :offers, only: [ :new, :create ]
  end
  resources :offers, only: [ :index, :show ] do
>>>>>>> master
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
end
