class AddingFieldsToTheActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :name, :text
  end
end
