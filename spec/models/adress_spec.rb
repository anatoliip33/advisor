require 'spec_helper'

describe Adress do
  it "has a valid factory" do
    expect(FactoryGirl.build(:adress)).to be_valid
  end

  it { should validate_presence_of(:country) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:street) }

  it { should validate_uniqueness_of(:country) }
  it { should validate_uniqueness_of(:state) }
  it { should validate_uniqueness_of(:city) }
  it { should validate_uniqueness_of(:street) }

end
