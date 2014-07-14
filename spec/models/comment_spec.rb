require 'spec_helper'

describe Comment do
  it "has a valid factory" do
    expect(FactoryGirl.build(:comment)).to be_valid
  end

  it { should validate_presence_of(:user_name) }
  it { should validate_presence_of(:body) }

  it { should validate_uniqueness_of(:user_name) }
  it { should validate_uniqueness_of(:body) }

end
