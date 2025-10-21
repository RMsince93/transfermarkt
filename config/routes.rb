Rails.application.routes.draw do
  resources :players
  resources :coach_season_teams
  resources :coaches
  resources :positions
  resources :countries
  resources :continents
  resources :teams
  resources :seasons
  root "home#index"
end
