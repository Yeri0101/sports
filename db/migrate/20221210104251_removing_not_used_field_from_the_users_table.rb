class RemovingNotUsedFieldFromTheUsersTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :nickname
  end
end
