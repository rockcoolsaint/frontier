Rails.application.routes.draw do
  root to: "tournaments#index"
  resources :tournament_players
  resources :tournaments do
    resources :players
  end
  resources :players
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
