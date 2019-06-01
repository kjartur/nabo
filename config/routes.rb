Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/show'
  get 'profiles/edit'
  get 'profiles/update'
  patch 'task/:id/complete', to: 'tasks#complete', as: 'taskcomplete'

  resources :tasks do
    resources :offers, only: [ :new, :create, :destroy, :index, :show]
  end
  resources :offers, only: [ :index, :show, :destroy ] do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end

  resource :dashboard, only: [ :show ]

end
