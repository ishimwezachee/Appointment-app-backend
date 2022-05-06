class RatingsController < ApplicationController
  def index; end

  def create
    @item = Item.find(params[:item_id])
    updated_rating = @item.ratings.create(user_id: current_user.id, item_id: @item.id)
    updated_rating.update_rating
  end
end
