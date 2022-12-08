class AddingNicknameFieldToTheUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :nickname, :text
  end
end
