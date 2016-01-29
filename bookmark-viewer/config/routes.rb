Rails.application.routes.draw do
  root 'home#index'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  resources :users, :except => [:index, :destroy]

  resources :lists, :except => [:index] do
    resources :bookmarks
  end

  resources :upload, :only =>[:new, :create, :destroy]

end
