Rails.application.routes.draw do
  root to: 'home#index'

  get '/login' => 'session#new'
 post '/login' => 'session#create'
 delete '/login' => 'session#destroy'

 resources :users

  resources :accounts

  resources :transactions
end
