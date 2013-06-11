Mosh::Application.routes.draw do
  resources :requests


  resources :softwares


  resources :images

  root to: 'images#index'
end
