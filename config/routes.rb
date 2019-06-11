Rails.application.routes.draw do
  
  namespace :clients do

    resources :clients, only: [:show, :edit, :update]

    get 'orders/:id/buy' => 'orders#buy', as: 'order_buy'
    post 'orders/:id/purchase' => 'orders#purchase', as: 'order_purchase'

    resources :items, only: [:update, :destroy]
    get 'items/edit' => 'items#edit'
    post 'items/:id/add_item' => 'items#add_item'

    resources :cds, only: [:show, :index]
    post 'cds/search' => 'cds#search'

  end

  namespace :admins do
    resources :clients, except: [:new, :create]
    resources :cds
    resources :orders, only: [:index, :update]
  end

  devise_for :clients
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
