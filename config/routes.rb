Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :offers do
    resources :reviews, only: [ :new, :create, :edit, :update, :destroy ]
  end
end
