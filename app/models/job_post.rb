class JobPost < ApplicationRecord
  belongs_to :company, optional: true
  has_many :job_post_keywords
  has_many :keywords, through: :job_post_keywords
  validates :job_title, :job_description, :eligibility_criteria,
   :required_experience, presence: true
end
