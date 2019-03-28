class CreateJobPostKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :job_post_keywords do |t|
      t.references :keyword, foreign_key: true
      t.references :job_post, foreign_key: true

      t.timestamps
    end
  end
end
