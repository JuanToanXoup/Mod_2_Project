Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :trails
  resources :bikes
  resources :posts
  
  get '/login', to: 'auth#login'
  post '/login', to: 'auth#verify'
  get '/logout', to: 'auth#logout'

end
