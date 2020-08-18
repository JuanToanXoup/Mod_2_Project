class RemoveDescriptionFromBikeComments < ActiveRecord::Migration[6.0]
  def change
    remove_column :bike_comments, :description 
  end
end
