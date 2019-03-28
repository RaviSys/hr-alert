class Company < ApplicationRecord
  has_many :company_domains
  has_many :domains, through: :company_domains
  validates :name, presence: true, uniqueness: true
end
