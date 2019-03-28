class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :contact_number
      t.string :message
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
