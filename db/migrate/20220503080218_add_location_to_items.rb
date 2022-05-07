class AddLocationToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :location, :string
  end
end
