class CreateJobPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :job_posts do |t|
      t.string :job_title
      t.text :job_description
      t.string :eligibility_criteria
      t.string :required_experience
      t.boolean :fresher_allowed
      t.string :status
      t.date :published_at
      t.string :cover_image
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
