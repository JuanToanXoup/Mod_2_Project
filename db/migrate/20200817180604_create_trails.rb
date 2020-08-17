class CreateTrails < ActiveRecord::Migration[6.0]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :length
      t.string :duration
      t.string :difficulty
      t.string :trail_type
      t.string :trail_img

      t.timestamps
    end
  end
end
