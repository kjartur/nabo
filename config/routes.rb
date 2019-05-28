Rails.application.routes.draw do
  get 'task/new'
  devise_for :users
  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
end


