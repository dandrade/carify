Rails.application.routes.draw do
  resources :dealerships
  root to: "dashboard#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
