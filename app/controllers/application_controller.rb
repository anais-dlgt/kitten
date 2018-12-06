class ApplicationController < ActionController::Base

  before_action :configure_devise_parameters, if: :devise_controller?
  before_action :set_current_cart

  private

  def configure_devise_parameters

    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit(:email,
      :password, :password_confirmation)}

    devise_parameter_sanitizer.permit(:sign_in) {|u| u.permit(:username, :email,
      :password, :password_confirmation,:remember_me)}
  end


    def set_current_cart
      puts "action set_current_cart"
      @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
      session[:cart_id] ||= @cart.id
    end
end
