require 'spec_helper'

describe Hotel do
  it "has a valid factory" do
    expect(FactoryGirl.build(:hotel)).to be_valid
  end

  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:photo) }
  it { should validate_presence_of(:price) }

  it { should validate_uniqueness_of(:title) }
  it { should validate_uniqueness_of(:description) }

end
