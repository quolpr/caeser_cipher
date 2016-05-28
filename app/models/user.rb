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

#:nodoc:
class User < ActiveRecord::Base
  extend FriendlyId
  has_one :cipher
  validates :name, uniqueness: true,
                   presence: true,
                   format: { with: /\A[a-z0-9 ]+\z/i }
  friendly_id :name, use: :slugged
end
