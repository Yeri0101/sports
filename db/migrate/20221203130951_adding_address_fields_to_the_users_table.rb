class AddingFourFieldsToTheUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :city, :text
    add_column :users, :country, :text
    add_column :users, :postcode, :integer
    add_column :users, :state, :text
  end
end
