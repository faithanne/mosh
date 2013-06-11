Mosh::Application.routes.draw do
  resources :location_types


  resources :locations


  resources :terms


  resources :semesters


  resources :software_categories


  resources :requests


  resources :softwares


  resources :images

  root to: 'images#index'
end
