Rails.application.routes.draw do
  #user
  root 'pages#home'
  get 'contact', to: 'pages#contact'
  get 'checkouts/checkout'
   get 'login', to: 'sessions#new'
  get 'signup', to: 'users#new'
  get 'singles/single'
  get 'users/signup'

  resources :products, only: [:index, :show] #show = chi tiet
  resources :categories, only: [:show]
  resources :users, except: [:destroy, :index]


  delete 'images', to:  'products#destroyimage'
end
