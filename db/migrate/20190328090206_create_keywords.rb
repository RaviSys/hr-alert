class CreateKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords do |t|
      t.string :name
      t.text :description
      t.string :info_source

      t.timestamps
    end
  end
end
