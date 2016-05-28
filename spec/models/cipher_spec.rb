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

require 'rails_helper'

RSpec.describe Cipher, type: :model do
  it { should belong_to :user }

  it { should validate_presence_of(:shift).on(:update) }
  it { should validate_presence_of(:message).on(:update) }
end
