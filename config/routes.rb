Rails.application.routes.draw do
  resources :line_items
  resources :carts
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
