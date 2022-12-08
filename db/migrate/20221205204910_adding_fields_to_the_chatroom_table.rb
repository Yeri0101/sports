class AddingFieldsToTheChatroomTable < ActiveRecord::Migration[7.0]
  def change
    add_column :chatrooms, :activity_id, :integer
  end
end
