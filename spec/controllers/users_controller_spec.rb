require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  describe "POST #create" do
    before { post :create, user: attributes_for(:user), format: :json }

    it { should respond_with(:created) }
  end
end
