Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :users
  resources :item_orders

  post "/login", to: "auth#login"
  get "/profile", to: "users#profile"
  resource :charges, only: [:create]
  post '/charges', to: 'charges#create' # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
