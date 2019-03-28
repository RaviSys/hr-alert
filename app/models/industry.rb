class Industry < ApplicationRecord
  has_many :companies
  validates :name, presence: true, uniqueness: true
end

# == Schema Information
#
# Table name: industries
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
