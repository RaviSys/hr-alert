class CreateImages < ActiveRecord::Migration[5.2]
  def change
    create_table :images do |t|
      t.string :image
      t.string :imageable_type
      t.integer :imageable_id

      t.timestamps
    end
  end
end
