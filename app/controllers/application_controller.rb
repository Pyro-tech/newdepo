class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_cart

  private

  def set_cart
#    @cart = Cart.includes(cart_items: :product).find_or_create_by(id: session[:carts_id])
# 見付けてくる もしくは つくる
#session[:cart_id] = @cart.id
  end
end
