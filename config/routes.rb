Rails.application.routes.draw do
  resources :etapes
  resources :dossiers
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "static_pages#home"

  resources :companies

end
