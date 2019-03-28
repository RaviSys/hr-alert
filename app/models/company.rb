class Company < ApplicationRecord
  include Validatable
  has_many :company_domains
  has_many :domains, through: :company_domains
  has_many :job_posts
  has_many :contacts
  has_many :images, as: :imageable
  belongs_to :industry, optional: true, counter_cache: true
end

# == Schema Information
#
# Table name: companies
#
#  id                    :integer          not null, primary key
#  address               :string
#  city                  :string
#  company_domains_count :integer
#  company_size          :string
#  contact_one           :string
#  contact_two           :string
#  contacts_count        :integer
#  country               :string
#  cover_image           :string
#  email                 :string
#  facebook_url          :string
#  fax                   :string
#  google_plus_url       :string
#  job_posts_count       :integer
#  latitude              :float
#  linkedin_url          :string
#  logo_image            :string
#  longitude             :float
#  name                  :string
#  state                 :string
#  twitter_url           :string
#  website               :string
#  year_of_establishment :date
#  youtube_url           :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  industry_id           :integer
#
# Indexes
#
#  index_companies_on_industry_id  (industry_id)
#
