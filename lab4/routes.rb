Rails.application.routes.draw do
  root 'pages#home'
  get "pages/about"
  get "pages/contact"
  resources :movements
  resources :products
  resources :categories

  get "up" => "rails/health#show", as: :rails_health_check
end
