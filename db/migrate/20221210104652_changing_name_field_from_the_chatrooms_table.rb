class ChangingNameFieldFromTheChatroomsTable < ActiveRecord::Migration[7.0]
  def change
    change_column :chatrooms, :name, :text
  end
end
