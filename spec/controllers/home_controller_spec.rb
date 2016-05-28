require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe "GET #show" do
    before { get :show }

    it { should respond_with(:ok) }
  end
end
