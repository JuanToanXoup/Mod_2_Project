Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users
  resources :trails
  resources :bikes
  resources :posts
  resources :post_comments
  resources :trail_comments
  resources :bike_comments
  resources :friends
  
  get '/login', to: 'auth#login'
  post '/login', to: 'auth#verify'
  get '/logout', to: 'auth#logout'
  get '/sign_up', to: 'auth#sign_up'

end
