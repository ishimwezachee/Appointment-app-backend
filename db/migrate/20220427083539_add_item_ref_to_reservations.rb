class AddItemRefToReservations < ActiveRecord::Migration[7.0]
  def change
    add_reference :reservations, :item, null: false, foreign_key: true
  end
end
