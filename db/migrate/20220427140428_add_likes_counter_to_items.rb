class AddLikesCounterToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :likes_counter, :integer
  end
end
