# == Schema Information
#
# Table name: domains
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Domain < ApplicationRecord
  acts_as_taggable_on :key_areas

  has_many :company_domains
  has_many :companies, through: :company_domains
  validates :name, presence: true, uniqueness: true
end
