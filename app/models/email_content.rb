class EmailContent < ApplicationRecord
  belongs_to :emailable, polymorphic: true
  validates :sender, :receiver, :content, presence: true

  def contact
    Contact.find(self.emailable_id)
  end

end

# == Schema Information
#
# Table name: email_contents
#
#  id             :integer          not null, primary key
#  content        :text
#  emailable_type :string
#  receiver       :string
#  sender         :string
#  subject        :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  emailable_id   :integer
#
