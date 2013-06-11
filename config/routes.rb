Mosh::Application.routes.draw do
  resources :semesters


  resources :software_categories


  resources :requests


  resources :softwares


  resources :images

  root to: 'images#index'
end
