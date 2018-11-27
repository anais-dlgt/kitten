class ItemsController < ApplicationController
  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def index
    @items = Item.all
  end
end
