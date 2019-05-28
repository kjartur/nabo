Rails.application.routes.draw do
  get 'task/new'
  devise_for :users
<<<<<<< HEAD
  root to: 'pages#home'
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  root to: 'tasks#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.htm
  resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
>>>>>>> master
end


