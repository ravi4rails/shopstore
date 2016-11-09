Rails.application.routes.draw do
  resources :accounts
  get 'dashboard/index'
  root to: "dashboard#index"
end
