Rails.application.routes.draw do
  root 'homes#index'
  get 'checkouts/checkout'
  get 'contacts/contact'
  get 'products/product'
  get 'sessions/new'
  get 'singles/single'
  get 'users/signup'
  resources :products
  asddsadasda
end
