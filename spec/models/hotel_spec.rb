require 'spec_helper'

describe Hotel do
  it "has a valid factory" do
    expect(FactoryGirl.create(:hotel)).to be_valid
  end
  it "is invalid without a title" do
    expect(FactoryGirl.build(:hotel, title: nil)).to_not be_valid
  end
  it "is invalid without a description" do
    expect(FactoryGirl.build(:hotel, description: nil)).to_not be_valid
  end
  it "is invalid without a photo" do
    expect(FactoryGirl.build(:hotel, photo: nil)).to_not be_valid
  end
end
