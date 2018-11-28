class ChargesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy]
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  def new
    get_cart
    @total = @cart.total
    @pay = @total
  end
  def create
    # Amount in cents
    get_cart
    @amount = @cart.line_items.to_a.sum {|li| li.item.price }.to_i*100
    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )
        #Mail de bienvenue envoyé lors de la commande
     UserMailer.welcome_email(params[:stripeEmail]).deliver_now!
       #Mail de confirmation de commande avec montant de la commande et les images
     UserMailer.user_order(params[:stripeEmail], @cart).deliver_now!

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
  private
  def get_cart
    if user_signed_in? && !@cart.nil?
      session[:cart_id] = @cart.id
    end
  end
end
