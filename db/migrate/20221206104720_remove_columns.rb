class RemoveColumns < ActiveRecord::Migration[7.0]
  def change
    remove_column :chatrooms, :activity_id, :integer
  end
end
