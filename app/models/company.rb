# == Schema Information
#
# Table name: companies
#
#  id                    :integer          not null, primary key
#  name                  :string
#  email                 :string
#  website               :string
#  contact_one           :string
#  contact_two           :string
#  fax                   :string
#  address               :string
#  city                  :string
#  state                 :string
#  country               :string
#  facebook_url          :string
#  linkedin_url          :string
#  twitter_url           :string
#  google_plus_url       :string
#  youtube_url           :string
#  company_size          :string
#  cover_image           :string
#  logo_image            :string
#  latitude              :float
#  longitude             :float
#  year_of_establishment :date
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

class Company < ApplicationRecord
  has_many :company_domains
  has_many :domains, through: :company_domains
  has_many :job_posts
  has_many :contacts
  validates :name, presence: true, uniqueness: true
end
