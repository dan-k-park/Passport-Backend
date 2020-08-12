Rails.application.routes.draw do
  resources :trips
  resources :users
  resources :countries
  post '/login', to: 'auth#create'
  post '/register', to: 'users#create'
  get '/current_user', to: 'auth#show'
  delete '/current_user', to: 'auth#destroy'
end
