class ReviewsController < ApplicationController
  def index; end

  def new
    @new_review = Review.new
  end

  def create
    @item = Item.find(params[:item_id])
    @new_review = @item.reviews.create(
      description: review_params[:description],
      user_id: current_user.id,
      item_id: item.id
    )
    @new_review.user_id = @item.id
    @new_review.item_id = params[:item_id]
    @new_review.update_reviews_counter
  end

  def destroy
    review = Review.find(params[:id])
    authorize! :destroy, review
    review.destroy
    redirect_to user_item_path
  end

  private

  def review_params
    params.require(:review).permit(:description)
  end
end
