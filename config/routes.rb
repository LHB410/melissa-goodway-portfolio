Rails.application.routes.draw do
  devise_for :users

  root 'arts#index', as: :home
  resources :contacts, only: [:new, :create]
  resources :arts, only: [:index, :show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :orders, only: [:show, :create] do
    resources :payments, only: :new
  end
  #TEST LOCALLY ROUTES BELOW
  mount StripeEvent::Engine, at: '/webhook'
  #FOR PRODCUCTION CHNAGE TO THIS.
  # mount StripeEvent::Engine, at: '/stripe-webhooks'
  get "art/art_modal" => 'art#art_modal', :as => :art_modal
end
