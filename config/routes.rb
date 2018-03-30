Rails.application.routes.draw do
  resources :users
  root 'users#index'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

end
