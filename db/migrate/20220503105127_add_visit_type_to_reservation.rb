class AddVisitTypeToReservation < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :visit_type, :string
  end
end
