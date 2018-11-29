Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resources :carts, path: :mon_panier
  devise_for :users
  resources :items, path: :chatons
  resources :charges
  root to: 'home#index'
  get '/a-propos-de-nous', to: 'home#about', :as => :about
  get '/contact', to: 'home#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
