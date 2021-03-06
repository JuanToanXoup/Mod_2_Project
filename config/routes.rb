Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/posts/following_posts', to: 'posts#following_posts'
  resources :users
  resources :trails
  resources :bikes
  resources :posts
  resources :post_comments
  resources :trail_comments
  resources :bike_comments
  resources :friends

  resources :bikes, :only => [:index, :show, :edit, :update, :destroy, :create]
  resources :rides, :only => [:index, :show, :edit, :update, :destroy, :create]
  
  resources :users do
    resources :bikes, :only => [:new]
    resources :rides, :only => [:new]
  end
  
  get '/login', to: 'auth#login'
  post '/login', to: 'auth#verify'
  get '/logout', to: 'auth#logout'
  get '/sign_up', to: 'auth#sign_up'


end
