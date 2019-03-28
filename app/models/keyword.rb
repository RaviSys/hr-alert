class Keyword < ApplicationRecord
  include Validatable
  has_many :job_post_keywords
  has_many :job_posts, through: :job_post_keywords
end

# == Schema Information
#
# Table name: keywords
#
#  id                      :integer          not null, primary key
#  description             :text
#  info_source             :string
#  job_post_keywords_count :integer
#  name                    :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#
