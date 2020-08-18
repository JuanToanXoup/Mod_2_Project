class AddCommentIdToPostComments < ActiveRecord::Migration[6.0]
  def change
    add_column  :post_comments, :comment_id, :integer
  end
end
