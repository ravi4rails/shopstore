Rails.application.routes.draw do

  resources :orders do
    collection do
      get :import
    end
  end
  resources :products do
    collection do
      get :import
    end
    resources :variants
  end
  resources :accounts do
    member do
      get 'test_connection'
    end
  end
  get 'dashboard/index'
  root to: "dashboard#index"
end
