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

require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_one :cipher }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }
end
