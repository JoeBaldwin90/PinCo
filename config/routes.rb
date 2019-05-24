Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)


  resources :products do
    resources :order_items
  end

  # Only show a user ONE cart
  resource :cart

  # Allow users to order multiple times
  resources :orders

  get "info", to: "pages#info"

  root "pages#home"
end
