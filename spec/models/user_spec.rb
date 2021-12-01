require 'rails_helper'

RSpec.describe User, type: :model do
  context "Sign-up tests" do
    it "should fail" do
      user = User.new()
      expect(user.valid?).to eq(false)
    end
  end
end
