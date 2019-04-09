class AddAboutToCompanies < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :about, :text
  end
end
