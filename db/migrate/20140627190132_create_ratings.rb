class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :score, :default => 0
      t.integer :hotel_id
      t.integer :user_id

      t.timestamps
    end
  end
end
