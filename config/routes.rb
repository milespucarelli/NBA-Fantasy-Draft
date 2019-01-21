Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :drafts, only: %i[new create]
  resources :players, only: %i[show index]
  resources :teams
end
