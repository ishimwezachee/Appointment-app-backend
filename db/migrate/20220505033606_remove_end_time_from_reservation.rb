class RemoveEndTimeFromReservation < ActiveRecord::Migration[7.0]
  def change
    remove_column :reservations, :end_time, :datetime
  end
end
