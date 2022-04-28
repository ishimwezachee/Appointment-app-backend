class Rating < ApplicationRecord
  belongs_to :item
  belongs_to :user

  # method to update the rating
  def update_rating
    item.increment!(:likes_counter)
  end
end
