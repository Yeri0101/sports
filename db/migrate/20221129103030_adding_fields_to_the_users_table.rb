class AddingFieldsToTheUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :text
    add_column :users, :first_name, :text
    add_column :users, :height, :integer
    add_column :users, :last_name, :text
    add_column :users, :level, :integer
    add_column :users, :phone_number, :text
    add_column :users, :weight, :integer
  end
end
