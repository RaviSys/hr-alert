class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :website
      t.string :contact_one
      t.string :contact_two
      t.string :fax
      t.string :address
      t.string :city
      t.string :state
      t.string :country
      t.string :facebook_url
      t.string :linkedin_url
      t.string :twitter_url
      t.string :google_plus_url
      t.string :youtube_url
      t.string :company_size
      t.string :cover_image
      t.string :logo_image
      t.float :latitude
      t.float :longitude
      t.date :year_of_establishment

      t.timestamps
    end
  end
end
