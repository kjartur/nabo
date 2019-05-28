Rails.application.routes.draw do
  get 'task/new'
  devise_for :users
  root to: 'pages#home'
<<<<<<< HEAD
  resources :tasks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
=======
  resources :offers do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
>>>>>>> master
end
