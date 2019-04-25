Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :only => [:new, :create, :edit, :update, :show]
  resources :fantasies
  resources :races

  get '/broadcast' => 'races#broadcast'

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  mount ActionCable.server => '/cable'
end
