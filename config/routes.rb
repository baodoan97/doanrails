Rails.application.routes.draw do
  #user
  root 'pages#home'
  get 'contact', to: 'pages#contact'
   get 'login', to: 'sessions#new'
  get 'signup', to: 'users#new'
  get 'users/signup'

  resources :categories, only: [:show]
  resources :users, except: [:destroy, :index]
  resources :products

  delete 'images', to:  'products#destroyimage'

  
end
