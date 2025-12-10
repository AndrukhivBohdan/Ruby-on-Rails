Rails.application.routes.draw do
  devise_for :users
  get "static_pages/landing_pages"
  get "static_pages/dashboard"
  root 'pages#home'
  get 'landing_pages', to: 'static_pages#landing_pages', as: :landing_pages
  get "pages/about"
  get "pages/contact"
  resources :movements
  resources :products do
  resources :movements, only: [:index, :new, :create]
  end
  resources :categories
  resources :movements,only: [:show, :edit, :update, :destroy]

  get "up" => "rails/health#show", as: :rails_health_check


end
