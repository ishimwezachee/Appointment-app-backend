class AddStartTimeToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :start_time, :string
  end
end
