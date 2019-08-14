Rails.application.routes.draw do
  get 'homes/index'
  resources :checkouts
  resources :locations
  resources :homes
  get 'homes/index', :controller=>'home', :action=>'title'

  patch 'appointments/update'
  root to: "patients#new"
  devise_for :users
  resources :searches
  resources :doctors
  resources :patients
  resources :checkouts, only: [:new, :create, :show]

  resources :appointments do
    member do
      put :confirmation
    end
  end


end
