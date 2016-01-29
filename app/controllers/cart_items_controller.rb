class CartItemsController < ApplicationController
  def create
    @cart.cart_items.create(cart_item_params)
    respond_to do |format|
      format.js { notice alart('カートに追加されました')}
    end
  end
  private
  def cart_item_params
    params.permit(:product_id)
  end
end