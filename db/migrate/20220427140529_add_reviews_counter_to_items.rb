class AddReviewsCounterToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :reviews_counter, :integer
  end
end
