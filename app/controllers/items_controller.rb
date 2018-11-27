class ItemsController < ApplicationController
  def index
    @items = Item.all

  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
  end



  def edit
  end
end
