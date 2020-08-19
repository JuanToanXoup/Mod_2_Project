class RemoveCommentIdFromPostComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :post_comments, :comment_id 
    
  end
end
