class JobPostKeyword < ApplicationRecord
  belongs_to :keyword, optional: true
  belongs_to :job_post, optional: true
end
