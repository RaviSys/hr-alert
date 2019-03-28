# == Schema Information
#
# Table name: keywords
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  info_source :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Keyword < ApplicationRecord
  has_many :job_post_keywords
  has_many :job_posts, through: :job_post_keywords
  validates :name, presence: true, uniqueness: true
end
