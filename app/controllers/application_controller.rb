class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :current_cart
  helper_method :current_cart

  def current_cart
    # When a customer visits the site, give them a new cart.
    # If customer has a cart, so keep it.
    if session[:card_id].present?
      # They have a cart, keep it.
      @current_cart = Cart.find(session[:cart_id])
    else
      # They don't have a cart, so give them one.
      @current_cart = Cart.create # same as Cart.new.save
      session[:cart_id] = @current_cart.id
    end
  end



end
