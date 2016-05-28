require 'rails_helper'

RSpec.describe CiphersController, type: :controller do
  let(:user) { create :user }

  describe "GET #show" do
    before { get :show, user_id: user.slug, format: :json }

    it { should respond_with(:ok) }
  end

  describe "PUT #update" do
    before do
      put :update,
          user_id: user.slug,
          cipher: attributes_for(:cipher),
          format: :json
    end

    it { should respond_with(:ok) }
  end
end
