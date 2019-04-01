class AddStatusToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :status, :string
  end
end
