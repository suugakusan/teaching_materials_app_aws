Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  resources :users, only: [:show, :create] do
    member do
      get :followings
      get :followers
      get :likes
    end
  end
  resources :favorites, only: [:create, :destroy]
  resources :posts, only: [:new, :create, :destroy, :update, :edit]
  resources :relationships, only: [:create, :destroy]
end
