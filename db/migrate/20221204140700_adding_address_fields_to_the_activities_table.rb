class AddingFourFieldsToTheActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :city, :text
    add_column :activities, :country, :text
    add_column :activities, :postcode, :integer
    add_column :activities, :state, :text
  end
end
