class CreateBikeComments < ActiveRecord::Migration[6.0]
  def change
    create_table :bike_comments do |t|
      t.integer :user_id
      t.integer :bike_id
      t.text :description

      t.timestamps
    end
  end
end
