class Contact < ApplicationRecord
  include Companyable
  validates :name, :email, :contact_number, :message, presence: true
end

# == Schema Information
#
# Table name: contacts
#
#  id             :integer          not null, primary key
#  contact_number :string
#  email          :string
#  message        :string
#  name           :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  company_id     :integer
#
# Indexes
#
#  index_contacts_on_company_id  (company_id)
#
