class AddCommentIdToTrailComments < ActiveRecord::Migration[6.0]
  def change
    add_column  :trail_comments, :comment_id, :integer
  end
end
