Rails.application.routes.draw do
  get 'task/new'
  devise_for :users
  root to: 'pages#home'

  resources :offers do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
  resources :tasks, only: [:index, :new, :show, :edit, :create]

end


