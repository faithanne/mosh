Mosh::Application.routes.draw do
  resources :softwares


  resources :images

  root to: 'images#index'
end
