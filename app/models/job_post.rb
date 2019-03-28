class JobPost < ApplicationRecord
  belongs_to :company, optional: true
  has_many :job_post_keywords
  has_many :keywords, through: :job_post_keywords
  validates :job_title, :job_description, :eligibility_criteria,
   :required_experience, presence: true
end

# == Schema Information
#
# Table name: job_posts
#
#  id                   :integer          not null, primary key
#  cover_image          :string
#  eligibility_criteria :string
#  fresher_allowed      :boolean
#  job_description      :text
#  job_title            :string
#  job_type             :string
#  published_at         :date
#  required_experience  :string
#  status               :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  company_id           :integer
#
# Indexes
#
#  index_job_posts_on_company_id  (company_id)
#
