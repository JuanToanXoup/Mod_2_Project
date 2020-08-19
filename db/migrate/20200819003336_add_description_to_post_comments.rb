class AddDescriptionToPostComments < ActiveRecord::Migration[6.0]
  def change
    add_column  :post_comments, :description, :text
  end
end
