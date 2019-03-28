module Companyable
  extend ActiveSupport::Concern
  
  included do 
    belongs_to :company, optional: true, counter_cache: true
    delegate :name, to: :company, allow_nil: true, prefix: :company
  end

end
