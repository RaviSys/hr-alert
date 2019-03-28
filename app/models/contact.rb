# == Schema Information
#
# Table name: contacts
#
#  id             :integer          not null, primary key
#  name           :string
#  email          :string
#  contact_number :string
#  message        :string
#  company_id     :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Contact < ApplicationRecord
  belongs_to :company, optional: true
  validates :name, :email, :contact_number, :message, presence: true
end
