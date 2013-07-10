require 'spec_helper'

describe User do
  before do
  	@user = FactoryGirl.create(:user)
  end

  it "authenticates with a valid email and password" do
  	expect(@user.authenticate("foobar")).to eq(@user)
  end

  it "authenticates with an incorect password" do
  	expect(@user.authenticate("incorrect")).to be_false
  end
end
