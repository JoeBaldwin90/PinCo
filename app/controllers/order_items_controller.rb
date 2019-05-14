class OrderItemsController < ApplicationController

  def create
    # Find product
    @product = Product.find(params[:product_id])

    @quantity = form_params[:quantity]

    @current_cart.order_items.create(product: @product, quantity: @quantity)

    flash[:success] = "Thanks for adding to your cart"

    redirect_to product_path(@product)
  end

  def update
    @product = Product.find(params[:product_id])

    flash[:success] = "Thanks for updating to your cart"

    redirect_to product_path(@product)
  end

  def form_params
    params.require(:order_item).permit(:quantity)
  end


end
