class Domain < ApplicationRecord
  include Validatable
  acts_as_taggable_on :key_areas

  has_many :company_domains
  has_many :companies, through: :company_domains
end

# == Schema Information
#
# Table name: domains
#
#  id          :integer          not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
