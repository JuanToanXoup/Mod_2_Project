class AddAttributesToRide < ActiveRecord::Migration[6.0]
  def change
    add_column  :rides, :experience, :text
    add_column  :rides, :time, :text
    add_column  :rides, :date, :datetime
  end
end
