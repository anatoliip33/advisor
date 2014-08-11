class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.text :description
      t.string :photo
      t.integer :status, default: 0
      t.float :rating
      t.boolean :breakfast
      t.decimal :price, precision:8, scale: 2
      t.integer :user_id
      t.integer :review, :default => 0

      t.timestamps
    end
  end
end
