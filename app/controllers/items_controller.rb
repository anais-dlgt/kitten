class ItemsController < ApplicationController

  before_action :set_item, only: [:show, :edit, :update, :destroy]

  def new
  end

  def show
  end

  def create
    @item = Item.new
  end

  def edit
    if current_user.admin?
    else
      redirect_to root_path
    end
  end

  def index
    @items = Item.all
  end

  def destroy
    @item.destroy
    flash[:notice] = "L'article a été supprimé avec succès."
    redirect_to items_path
  end

  def update
    @item.update(item_params)
    flash[:notice] = "L'article a été modifié avec succès."
    redirect_to item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:title, :description, :price)
  end

  def set_item
    @item = Item.find(params[:id])
  end
end
