class CreateCompanyDomains < ActiveRecord::Migration[5.2]
  def change
    create_table :company_domains do |t|
      t.references :company, foreign_key: true
      t.references :domain, foreign_key: true

      t.timestamps
    end
  end
end
