Rails.application.routes.draw do
  root to: 'home#index'
  get "inactive", to: "home#inactive"
  resources :users, only: [:index, :show]
end
