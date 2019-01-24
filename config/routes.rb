Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :drafts, only: %i[create]
  resources :players, only: %i[show index]
  resources :teams
  resources :users, only: %i[show edit update destroy]

  get '/drafts/new/:id', to: 'drafts#new', as: 'new_draft'

  get '/signup', to: 'users#new'
  post '/users', to: 'users#create', as: 'users'

  get '/login', to: 'sessions#new', as: 'login'
  post '/sessions', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy', as: 'logout'
end
