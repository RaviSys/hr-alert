module Companyable
  extend ActiveSupport::Concern
  
  included do 
    belongs_to :company, optional: true
    delegate :name, to: :company, allow_nil: true, prefix: :company
  end

end
