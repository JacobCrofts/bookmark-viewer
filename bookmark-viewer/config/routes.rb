Rails.application.routes.draw do
  root 'home#index'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy', as: 'logout'

  resources :users, :except => [:index, :destroy] do
    resources :lists do
      resources :bookmarks
    end
  end

  resources :file_upload, :only =>[:new, :create, :destroy]

end
