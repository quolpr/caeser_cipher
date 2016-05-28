# == Schema Information
#
# Table name: ciphers
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  shift      :integer
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# :nodoc:
class Cipher < ActiveRecord::Base
  belongs_to :user

  validates :shift, :message, presence: true, on: :update

  def encoded_message
    if message.present? & shift.present?
      Cipher::CaesarEncoderCommand.proccess(shift, message)
    else
      ''
    end
  end
end
