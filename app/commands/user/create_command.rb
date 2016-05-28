# :nodoc:
class User::CreateCommand # I don't love AR callbacks
  def self.proccess(params)
    User.create(params).tap(&:create_cipher)
  end
end
