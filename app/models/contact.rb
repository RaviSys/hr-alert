class Contact < ApplicationRecord
  include Companyable
  has_many :email_contents, as: :emailable
  validates :name, :message, presence: true
  validates :email, :contact_number, presence: true, uniqueness: true
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
