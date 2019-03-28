module Domainable
  extend ActiveSupport::Concern
  
  included do 
    belongs_to :domain, optional: true, counter_cache: true
    delegate :name, to: :domain, allow_nil: true, prefix: :domain
  end

end
