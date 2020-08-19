class RemoveCommentIdFromTrailComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :trail_comments, :comment_id 
  end
end
