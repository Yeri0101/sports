class AddingUsernameFieldToTheUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :username, :text
  end
end
