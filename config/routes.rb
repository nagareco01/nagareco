Rails.application.routes.draw do

  namespace :clients do

    resources :clients, only: [:new, :create, :show, :edit, :update]

    get 'orders/:id/buy' => 'orders#buy', as: 'order_buy'
    post 'orders/:id/purchase' => 'orders#purchase', as: 'order_purchase'
    resources :orders, only: [:index]

    resources :items, only: [:index, :update, :destroy]
    post 'items/add_item' => 'items#add_item'

    get 'cds/search' => 'cds#search'
    resources :cds, only: [:show, :index]

  end

  namespace :admins do
    resources :clients, except: [:new, :create]
    resources :cds
    resources :orders, only: [:index, :update]
  end

  devise_for :clients, controllers: {
    registrations: 'clients/registrations',
    sessions: 'clients/sessions'
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
