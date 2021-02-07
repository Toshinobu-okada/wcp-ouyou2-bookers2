Rails.application.routes.draw do
  
 
  root 'home#top'
  devise_for :users
  
  resources :users
  resources :books do
    resource :favorites, only: [:create, :destroy]
    resources :book_comments, only: [:create, :destroy]
  end
  get 'top' => 'home#top'
  get 'home/about' => 'home#about'
   get 'search' => 'search#search'
  get 'users/follow_list/:id' => 'users#follow_list', as: 'users_follow_list'
  get 'users/follower_list/:id' => 'users#follower_list', as: 'users_follower_list'
  post 'follow/:id' => 'relationships#follow', as: 'follow'
  post 'unfollow/:id' => 'relationships#unfollow', as: 'unfollow'
  
end