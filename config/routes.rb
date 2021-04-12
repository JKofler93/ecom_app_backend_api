Rails.application.routes.draw do
  resources :reviews
  resources :orders
  resources :item_orders
  resources :items
  resources :users
  resources :charges
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
