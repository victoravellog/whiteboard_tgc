Rails.application.routes.draw do

  post '/validate_visitor_token', to: 'personajes#validate_visitor_token', as: 'validate_visitor_token'

  devise_for :users
  resources :raza_personajes
  resources :tipo_personajes
  resources :personajes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
