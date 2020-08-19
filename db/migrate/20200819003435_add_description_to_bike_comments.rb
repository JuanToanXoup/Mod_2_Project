class AddDescriptionToBikeComments < ActiveRecord::Migration[6.0]
  def change
    add_column  :bike_comments, :description, :text
  end
end
