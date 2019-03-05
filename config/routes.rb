Rails.application.routes.draw do
  resources :items
  devise_for :users
  resources :categories
  root to: "categories#index"
end
