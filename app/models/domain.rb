class Domain < ApplicationRecord
  acts_as_taggable_on :key_areas

  has_many :company_domains
  has_many :companies, through: :company_domains
  validates :name, presence: true, uniqueness: true
end
