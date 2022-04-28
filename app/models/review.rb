class Review < ApplicationRecord
  belongs_to :item
  belongs_to :user

  # method to update the reviews counter
  def update_reviews_counter
    item.update(reviews_counter: item.reviews.count)
  end
end
