Rails.application.routes.draw do
  resources :karates
  get '/me', to: 'users#me'
  post '/register', to: 'users#create'
  post '/login', to: 'sessions#login'
  delete '/logout', to: 'sessions#logout'
end
