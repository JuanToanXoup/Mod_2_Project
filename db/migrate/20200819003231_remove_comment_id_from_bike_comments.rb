class RemoveCommentIdFromBikeComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :bike_comments, :comment_id 
  end
end
