Rails.application.routes.draw do
  resources :pokemon_teams, only: [:create]
end
