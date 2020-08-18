class AddCommentIdToBikeComments < ActiveRecord::Migration[6.0]
  def change
    add_column  :bike_comments, :comment_id, :integer
  end
end
