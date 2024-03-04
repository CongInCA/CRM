Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  resources :customers do
    collection do
      get 'missing_email', to: 'customers#missing_email'
      get 'alphabetized', to: 'customers#alphabetized'
    end
  end


  # root 'customers#index', as: 'customers_root'
  root 'customers#index'

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check


  # Defines the root path route ("/")
  # root "posts#index"
end
