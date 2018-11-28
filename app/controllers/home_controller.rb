class HomeController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def index
  end

  def about
  end

  def private
  end

  def contact
  end
end
