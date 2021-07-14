Rails.application.routes.draw do
  resources :order_lines
  resources :orders
  resources :products
  get 'catalogs/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
