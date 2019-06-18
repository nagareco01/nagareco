Rails.application.routes.draw do

  namespace :clients do

    resources :clients, only: [:new, :create, :show, :edit, :update, :destroy]
    delete "clients/clients/:id/remove_address" => "clients#remove_address", as: "remove_address"

    get "orders/:id/index" => "orders#index", as: "order_index"
    get "orders/:id/show" => "orders#show", as: "order_show"
    get 'orders/:id/buy' => 'orders#buy', as: 'order_buy'
    post 'orders/:id/purchase' => 'orders#purchase', as: 'order_purchase'

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
    sessions: 'clients/sessions',
    passwords: 'clients/passwords'
  }
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
