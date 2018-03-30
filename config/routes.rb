Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
