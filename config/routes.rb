Rails.application.routes.draw do
  resources :users
  resources :attractions
  post "/rides/new", to: "rides#new"
  root 'users#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
