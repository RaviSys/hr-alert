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
  end
end
