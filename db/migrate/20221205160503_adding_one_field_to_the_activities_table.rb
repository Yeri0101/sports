class AddingOneFieldToTheActivitiesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :activities, :chatroom_id, :integer
  end
end
