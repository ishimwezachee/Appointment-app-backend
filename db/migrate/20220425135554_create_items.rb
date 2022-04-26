class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :title
      t.string :image
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
