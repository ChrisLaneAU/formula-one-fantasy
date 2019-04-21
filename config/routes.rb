Rails.application.routes.draw do
  get 'fantasies/new'
  get 'fantasies/show'
  get 'fantasies/index'
  get 'fantasies/new'
  get 'fantasies/show'
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :show]
  resources :fantasies, :only => [:new, :create, :show, :index]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
