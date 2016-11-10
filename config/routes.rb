Rails.application.routes.draw do
  resources :products
  resources :accounts do
    member do
      get 'test_connection'
    end
  end
  get 'dashboard/index'
  root to: "dashboard#index"
end
