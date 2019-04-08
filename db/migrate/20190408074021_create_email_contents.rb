class CreateEmailContents < ActiveRecord::Migration[5.2]
  def change
    create_table :email_contents do |t|
      t.string :emailable_type
      t.integer :emailable_id
      t.string :receiver
      t.string :sender
      t.text :content
      t.string :subject

      t.timestamps
    end
  end
end
