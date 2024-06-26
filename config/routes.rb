Rails.application.routes.draw do
  resources :profiles

  get "dashboard/" => "dashboard#index", :as => :dashboard
  get "guest/login" => "pages#login", :as => :guest_login
  devise_for :users, controllers: {registrations: "users/registrations"}

  # resources :users, except: :create
  # post "create_user" => "users/registrations#create", :as => :create_user

  # get "pages/index"
  # get "page/index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", :as => :rails_health_check
  # Defines the root path route ("/")
  root "pages#index"
end
