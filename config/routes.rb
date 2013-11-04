Mosh::Application.routes.draw do
  get "poster/index"

  resources :installs


  resources :request_statuses


  resources :software_tests


  resources :hours


  resources :after_hours_accesses


  resources :hardware_types


  resources :hardware_statuses


  resources :hardwares


  resources :workstation_types


  resources :workstations


  resources :silent_installs


  devise_for :users


  resources :location_types


  resources :locations

  namespace :admin do
    resources :users
  end


  resources :terms


  resources :semesters


  resources :software_categories


  resources :requests


  resources :softwares


  resources :images
  
  resources :home


  root to: 'home#index'
end
