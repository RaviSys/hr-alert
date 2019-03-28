class Contact < ApplicationRecord
  belongs_to :company, optional: true
  validates :name, :email, :contact_number, :message, presence: true
end
