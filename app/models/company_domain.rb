# == Schema Information
#
# Table name: company_domains
#
#  id         :integer          not null, primary key
#  company_id :integer
#  domain_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CompanyDomain < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :domain, optional: true
end
