class AddCompaniesCountToIndustries < ActiveRecord::Migration[5.2]
  def change
    add_column :industries, :companies_count, :integer
  end
end
