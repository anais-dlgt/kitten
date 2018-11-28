class ItemsController < ApplicationController
  include CurrentCart
  before_action :set_cart
  
  def new
  end

  def show
   @item = Item.find(params[:id])
  end

  def create
  end

  def edit
  end

  def index
    @items = Item.all
  end
end
