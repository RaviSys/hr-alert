class Image < ApplicationRecord
  belongs_to :imageable, polymorphic: true
end

# == Schema Information
#
# Table name: images
#
#  id             :integer          not null, primary key
#  image          :string
#  imageable_type :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  imageable_id   :integer
#
