# == Schema Information
#
# Table name: job_post_keywords
#
#  id          :integer          not null, primary key
#  keyword_id  :integer
#  job_post_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class JobPostKeyword < ApplicationRecord
  belongs_to :keyword, optional: true
  belongs_to :job_post, optional: true
end
