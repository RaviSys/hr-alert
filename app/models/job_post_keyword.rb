class JobPostKeyword < ApplicationRecord
  belongs_to :keyword, optional: true
  belongs_to :job_post, optional: true
end

# == Schema Information
#
# Table name: job_post_keywords
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  job_post_id :integer
#  keyword_id  :integer
#
# Indexes
#
#  index_job_post_keywords_on_job_post_id  (job_post_id)
#  index_job_post_keywords_on_keyword_id   (keyword_id)
#
