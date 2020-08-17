class CreateBikeLikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_likes do |t|
      t.integer :user_id
      t.integer :bike_id

      t.timestamps
    end
  end
end
