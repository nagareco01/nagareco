Rails.application.routes.draw do
  
  namespace :clients do

    resources :clients, only: [:show, :edit, :update]

    get 'orders/:id/buy' => 'orders#buy'
    post 'orders/:id/purchase' => 'orders#purchase'

    resources :items, only: [:edit, :update, :destroy]
    post 'items/:id/add_item' => 'items#add_item'

    resources :cds, only: [:show, :index]
    post 'cds/search' => 'cds#search'

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
