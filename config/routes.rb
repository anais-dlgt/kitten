Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts
  devise_for :users
  resources :items
  root to: 'home#index'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
