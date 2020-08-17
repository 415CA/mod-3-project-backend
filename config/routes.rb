Rails.application.routes.draw do
  # resources :libraries
  # resources :books
  # resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/books', to: 'books#index'
  post '/books', to: 'books#create'
  patch '/books/:id', to: 'books#update'
  delete 'books/:id', to: 'books#destory'

  get '/users', to: 'users#index'
  post '/users', to: 'users#create'
  patch '/users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destory'
  post '/users/login', to: 'users#login'

  get '/libraries', to: 'libraries#index'
  post '/libraries', to: 'libraries#create'
  patch '/libraries/:id', to: 'libraries#update'
  delete 'libraries/:id', to: 'libraries#destory'


end
