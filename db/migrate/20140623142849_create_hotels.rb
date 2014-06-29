class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :rating
      t.boolean :breakfast
      t.decimal :price, precision:8, scale: 2

      t.timestamps
    end
  end
end
