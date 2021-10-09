Rails.application.routes.draw do
  root to: 'toppages#index'
  
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  get 'signup', to: 'users#new'
  get 'search', to: 'posts#search'
  get 'subject_search', to: 'posts#subject_search'
  post '/guest', to: 'guest_sessions#create'
  resources :users, only: [:edit, :show, :create, :update] do
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
