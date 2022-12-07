class ChangingDatetimeFieldsFromTheActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    change_column :activities, :end_date, :datetime
    change_column :activities, :start_date, :datetime
  end
end
