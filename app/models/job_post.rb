class JobPost < ApplicationRecord

  STATUS = ['pending', 'published', 'active', 'inactive']
  JOB_TYPE = ['Part Time', 'Full Time', 'Remote Work', 'Contract']
  EXPERIENCE_REQUIRED = ['6 Months - 1 Year', '1 Year - 2 Year', '2 Year - 3 Year', '3 Year - 5 Year', '5 Year - 8 Year', '8+ Year']

  include Companyable
  has_many :job_post_keywords
  has_many :keywords, through: :job_post_keywords
  validates :job_title, :job_description, :eligibility_criteria,
   :required_experience, presence: true

  before_create :set_default_status

  def set_default_status
    self.status = 'pending'
  end

end

# == Schema Information
#
# Table name: job_posts
#
#  id                      :integer          not null, primary key
#  cover_image             :string
#  eligibility_criteria    :string
#  fresher_allowed         :boolean
#  job_description         :text
#  job_post_keywords_count :integer
#  job_title               :string
#  job_type                :string
#  published_at            :date
#  required_experience     :string
#  status                  :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  company_id              :integer
#
# Indexes
#
#  index_job_posts_on_company_id  (company_id)
#
