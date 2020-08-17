class CreatePostComments < ActiveRecord::Migration[6.0]
  def change
    create_table :post_comments do |t|
      t.integer :user_id
      t.integer :post_id
      t.text :description

      t.timestamps
    end
  end
end
