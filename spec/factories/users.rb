# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  slug       :string
#

FactoryGirl.define do
  factory :user do
    sequence(:name) { |n| "name#{n}" }
    after(:create, &:create_cipher!)
  end
end
