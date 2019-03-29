class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :contact, :string
    add_column :users, :nationality, :string
    add_column :users, :city, :string
    add_column :users, :country, :string
  end
end
