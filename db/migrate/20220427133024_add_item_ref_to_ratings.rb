class AddItemRefToRatings < ActiveRecord::Migration[7.0]
  def change
    add_reference :ratings, :item, null: false, foreign_key: true
  end
end
