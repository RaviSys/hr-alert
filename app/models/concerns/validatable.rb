module Validatable
  extend ActiveSupport::Concern
  
  included do 
    validates :name, presence: true, uniqueness: true
  end

end
