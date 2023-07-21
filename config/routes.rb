Rails.application.routes.draw do
  resources :pokemon_teams, only: [:index, :show, :create, :update, :destroy]
end
