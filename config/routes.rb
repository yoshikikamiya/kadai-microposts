Rails.application.routes.draw do
    root to: 'toppages#index'
    
    get 'login', to: 'sessions#new'
    post 'login', to: 'sessions#create'
    delete 'logout', to: 'sessions#destroy'
    
    get 'signup',to:'users#new'
  
 
    resources :users, only: [:index, :show, :new, :create,:likes] do
    member do
        get :followings
        get :followers
        get :likes
        get :like_microposts
        get :like_users
    end
    end    

   

    resources :microposts, only: [:create, :destroy]
    resources :relationships, only:[:create,:destroy]
    resources :favorites, only:[:create,:destroy]
end