class RemoveStartTimeFromReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :start_time, :datetime
  end
end
