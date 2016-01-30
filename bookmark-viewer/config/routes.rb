Rails.application.routes.draw do
  root 'home#index'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create', as: 'post_login'
  get '/logout' => 'sessions#destroy', as: 'logout'

  get '/sessions' => 'sessions#show'
  resources :users, :except => [:index, :destroy]

  resources :lists, :except => [:index] do
    resources :bookmarks
  end

  resources :upload, :only =>[:new, :create, :destroy]

end
