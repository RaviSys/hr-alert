class Company < ApplicationRecord

  include Validatable
  include Statusable
  # validates :contact_one, :city, :state, :country, :address, presence: true
  validates :email, :contact_one, presence: true, uniqueness: true
  has_many :company_domains
  has_many :domains, through: :company_domains
  has_many :job_posts
  has_many :contacts
  has_many :images, as: :imageable
  belongs_to :industry, optional: true, counter_cache: true
  belongs_to :user, optional: true

  before_create :set_default_status
  paginates_per 10
  
  def set_default_status
    self.status = 'submitted'
  end

  def all_job_posts
    job_posts
  end

  def address_exists?
    address.present? || city.present? || state.present? || country.present?
  end

  def social_links_exists?
    facebook_url.present? || google_plus_url.present? || twitter_url.present? || linkedin_url.present? || youtube_url.present?
  end

end

# == Schema Information
#
# Table name: companies
#
#  id                    :integer          not null, primary key
#  about                 :text
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
#  status                :string
#  twitter_url           :string
#  website               :string
#  year_of_establishment :date
#  youtube_url           :string
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  industry_id           :integer
#  user_id               :integer
#
# Indexes
#
#  index_companies_on_industry_id  (industry_id)
#  index_companies_on_user_id      (user_id)
#
