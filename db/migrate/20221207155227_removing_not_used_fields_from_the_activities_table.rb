class RemovingNotUsedFieldsFromTheActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :activities, :city
    remove_column :activities, :country
    remove_column :activities, :postcode
    remove_column :activities, :state
  end
end
