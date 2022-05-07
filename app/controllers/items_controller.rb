class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items
  end

  def show
    @item = Item.find(params[:id])
    render json: @item
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    return render json: @item.errors, status: :unprocessable_entity unless @item.save

    render json: @item, status: :created
  end

  private

  def item_params
    params.require(:house).permit(:name, :title, :description, :image, location: :price)
  end
end
