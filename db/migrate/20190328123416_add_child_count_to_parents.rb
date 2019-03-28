class AddChildCountToParents < ActiveRecord::Migration[5.2]
  def change
    add_column :companies, :company_domains_count, :integer
    add_column :companies, :job_posts_count, :integer
    add_column :companies, :contacts_count, :integer
    add_column :keywords, :job_post_keywords_count, :integer
    add_column :job_posts, :job_post_keywords_count, :integer
    add_column :domains, :company_domains_count, :integer
  end
end
