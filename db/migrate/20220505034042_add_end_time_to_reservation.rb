class AddEndTimeToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :end_time, :string
  end
end
