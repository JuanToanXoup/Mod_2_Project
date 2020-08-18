class RemoveDescriptionFromPostComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :post_comments, :description
  end
end
