class CreateTrailComments < ActiveRecord::Migration[6.0]
  def change
    create_table :trail_comments do |t|
      t.integer :user_id
      t.integer :trail_id
      t.text :description

      t.timestamps
    end
  end
end
