Rails.application.routes.draw do
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

  get '/annotations', to: 'annotations#index'
  post '/annotations', to: 'annotations#create'
  patch '/annotations/:id', to: 'annotations#update'
  delete 'annotations/:id', to: 'annotations#destory'


end
