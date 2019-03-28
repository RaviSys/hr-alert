class Keyword < ApplicationRecord
  has_many :job_post_keywords
  has_many :job_posts, through: :job_post_keywords
  validates :name, presence: true, uniqueness: true
end
