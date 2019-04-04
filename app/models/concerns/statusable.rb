module Statusable
  extend ActiveSupport::Concern
  included do 
    STATUS = ['in_review', 'approved', 'rejected', 'submitted']
    JP_STATUS = ['active', 'inactive', 'published', 'pending']

    STATUS.each do |status|
      define_method "#{status}?" do 
        self.status == "#{status}"
      end
    end

    JP_STATUS.each do |jp_status| 
      define_method "#{jp_status}_job_posts" do 
        job_posts.where(status: "#{jp_status}")
      end
    end

    scope :approved_companies, -> { where(status: 'approved') }
    scope :rejected_companies, -> { where(status: 'rejected') }
    scope :in_review_companies, -> { where(status: 'in_review') }
  end
end
