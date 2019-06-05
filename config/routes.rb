Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'pages/show'
  get 'profiles/edit'
  get 'profiles/update'
  get 'myoffers', to: 'offers#myoffers', as: 'myoffers'
  resources :profiles, only: :show

  patch 'task/:id/complete', to: 'tasks#complete', as: 'taskcomplete'
  patch 'offer/:id', to: 'offers#accept', as: 'acceptoffer'

  resources :tasks do
    resources :offers, only: [ :new, :create, :destroy, :index, :accept ]
  end
  resources :offers, only: [ :index, :show, :destroy ] do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end

  resource :dashboard, only: [ :show ]
  get 'find_profile_pic', to: 'dashboards#find_profile_pic', as: 'find_profile_pic'

  resources :offers, only: :accept

end
