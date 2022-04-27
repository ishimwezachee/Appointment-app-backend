class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :title
      t.string :description
      t.string :image
      t.integer :price

      t.timestamps
    end
  end
end