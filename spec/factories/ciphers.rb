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

FactoryGirl.define do
  factory :cipher do
    shift 1
    message "MyText"
  end
end
