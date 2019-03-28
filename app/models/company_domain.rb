class CompanyDomain < ApplicationRecord
  include Companyable
  include Domainable
  validates :company_id, :domain_id, presence: true
end

# == Schema Information
#
# Table name: company_domains
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :integer
#  domain_id  :integer
#
# Indexes
#
#  index_company_domains_on_company_id  (company_id)
#  index_company_domains_on_domain_id   (domain_id)
#
