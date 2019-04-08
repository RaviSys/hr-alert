class Industry < ApplicationRecord
  include Validatable
  has_many :companies
end

# == Schema Information
#
# Table name: industries
#
#  id              :integer          not null, primary key
#  companies_count :integer
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
