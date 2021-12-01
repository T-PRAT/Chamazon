Rails.application.routes.draw do
  root to: "items#index"
  resources :items
  devise_for :users
  resources :join_table_items_carts, only: [:create, :update, :destroy]
  resources :carts, except: [:index, :new, :edit]
  resources :orders, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
