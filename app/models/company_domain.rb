class CompanyDomain < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :domain, optional: true
end
