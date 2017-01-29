Rails.application.routes.draw do
  get 'sessions/login'
  #match ':controller(/:action(/:id))(.:format)'
  root 'sessions#home'

  #links
  get 'home' => 'sessions#home'
  get 'profile' => 'sessions#profile'

  #users
  resources :users
  get 'users/new'
  get 'signup' => 'users#new'
  get 'login' => 'sessions#login'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  
  #files
  get 'files' => 'drive_files#index'
  get '/files/new' => 'drive_files#new'
  post 'files' => 'drive_files#create'
end
