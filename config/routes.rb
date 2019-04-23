Rails.application.routes.draw do
  # get 'races/show'
  # get 'races/index'
  # get 'fantasies/new'
  # get 'fantasies/show'
  # get 'fantasies/index'
  # get 'fantasies/new'
  # get 'fantasies/show'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :edit, :show]
  resources :fantasies, :only => [:new, :show, :edit, :index]
  resources :races

  get '/broadcast' => 'races#broadcast'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  mount ActionCable.server => '/cable'
end
