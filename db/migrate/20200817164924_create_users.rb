class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :skill_level
      t.string :address
      t.string :user_img

      t.timestamps
    end
  end
end
