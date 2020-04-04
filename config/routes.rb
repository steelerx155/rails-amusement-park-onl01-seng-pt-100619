Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/edit'
  # get 'users/update'
  # get 'users/delete'
  #  get 'users/show'
  #  root 'attractions#index'  
  # resources :users
  # resources :attractions
  # resources :rides
  get '/users/new', to: 'users#new', as: 'new_user'
  root 'static#home'
  get '/users', to:'users#index', as: 'users'
  post '/users', to:'users#create'
  get '/users/:id', to: 'users#show', as: 'user'
  get '/users/:id/edit', to: 'users#edit', as: 'edit_user'
  get '/attractions', to: 'attractions#index', as: 'attractions'
  get '/signin', to: 'session#new', as: 'signin'
  post '/session', to: 'session#create', as: 'session'
  delete '/session/', to: 'session#destroy'
  get '/attractions/new', to: 'attractions#new', as: 'new_attraction'
  get '/attractions/:id', to: 'attractions#show', as: 'attraction'
  get '/attractions/:id/edit', to: 'attractions#edit', as: 'edit_attraction'
  patch '/attractions/:id', to: 'attractions#update'
  post '/attractions', to: 'attractions#create'
  post '/rides', to:"rides#create", as: 'rides'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
