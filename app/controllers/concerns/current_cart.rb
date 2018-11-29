module CurrentCart
  private

  def set_current_cart
    puts "action set_current_cart"
    @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] ||= @cart.id
  end
end
