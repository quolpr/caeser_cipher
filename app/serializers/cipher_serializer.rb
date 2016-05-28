# :nodoc:
class CipherSerializer < ActiveModel::Serializer
  attributes :id, :shift, :message,
             :encoded_message, :created_at, :updated_at
end
