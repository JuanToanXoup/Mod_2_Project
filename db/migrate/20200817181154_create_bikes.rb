class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :make
      t.string :model
      t.string :bike_type
      t.string :frame_size
      t.string :tire_size
      t.integer :price
      t.integer :user_id
      t.string :bike_img

      t.timestamps
    end
  end
end
