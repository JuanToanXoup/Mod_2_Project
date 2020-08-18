class AddMeetupDateToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :meetup_date, :datetime
  end
end
