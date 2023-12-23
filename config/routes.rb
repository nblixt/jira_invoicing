Rails.application.routes.draw do
  root to: 'home#index'
  get "inactive", to: "home#inactive"
  resources :projects, only: [:index, :show]
  resources :users, only: [:index, :show]
end
