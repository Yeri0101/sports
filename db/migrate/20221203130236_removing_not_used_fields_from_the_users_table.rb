class RemovingFieldsFromTheUsersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :height
    remove_column :users, :level
    remove_column :users, :weight
  end
end
