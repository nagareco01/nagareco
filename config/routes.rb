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

    post 'cds/:id/hide' => 'cds#hide', as: 'cd_hide'
    get 'cds/add' => 'cds#add', as: 'cd_add'
    post 'cds/add_info' => 'cds#add_info', as: 'cd_add_info'

    resources :cds, except: [:destroy]

    resources :orders, only: [:index, :update]
  end

  devise_for :clients, controllers: {
    registrations: 'clients/registrations',
    sessions: 'clients/sessions'
  }
  devise_scope :client do
      root :to => 'clients/cds#index'
  end

  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/sessions'
  }
  devise_scope :admin do
      root :to => 'admins/cds#index'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
