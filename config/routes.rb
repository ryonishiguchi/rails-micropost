Rails.application.routes.draw do

  root 'toppages#index'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
  resources :users, only: [:index, :show, :new, :create] do
    member do
      get :followings
      get :followers
      get :fav_index
    end
  end

  get 'signup', to: 'users#new'

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  resources :favorites, only: [:create, :destroy]

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
