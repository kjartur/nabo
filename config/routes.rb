Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/show'
  get 'profiles/edit'
  get 'profiles/update'
  patch 'task/:id/complete', to: 'tasks#complete', as: 'taskcomplete'
  patch 'offer/:id', to: 'offers#accept', as: 'acceptoffer'

  resources :tasks do
    resources :offers, only: [ :new, :create, :destroy ]
  end
  resources :offers, only: [ :index, :show, :destroy ] do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end

  resource :dashboard, only: [:show]

end
