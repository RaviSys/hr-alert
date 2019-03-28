# == Schema Information
#
# Table name: job_posts
#
#  id                   :integer          not null, primary key
#  job_title            :string
#  job_description      :text
#  eligibility_criteria :string
#  required_experience  :string
#  fresher_allowed      :boolean
#  status               :string
#  published_at         :date
#  cover_image          :string
#  company_id           :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class JobPost < ApplicationRecord
  belongs_to :company, optional: true
  has_many :job_post_keywords
  has_many :keywords, through: :job_post_keywords
  validates :job_title, :job_description, :eligibility_criteria,
   :required_experience, presence: true
end
