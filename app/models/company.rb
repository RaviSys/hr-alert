class Company < ApplicationRecord
  has_many :company_domains
  has_many :domains, through: :company_domains
  has_many :job_posts
  has_many :contacts
  validates :name, presence: true, uniqueness: true
end
