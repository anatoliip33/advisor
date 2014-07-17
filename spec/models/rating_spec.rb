require 'spec_helper'

describe Rating do
  it "has a valid factory" do
    expect(FactoryGirl.build(:rating)).to be_valid
  end

  describe "average rating" do
    before :each do
      @rating = FactoryGirl.create(:rating, hotel: create(:hotel))
    end

    it "should calculate average rating properly" do
      [1, 5].each do |r|
        @rating = FactoryGirl.create(:rating, hotel: create(:hotel), score: r)
      end
      @rating.average_score.should eq(3)
    end
  end

  describe 'callback after save' do
    it "should run the proper callback" do
      rating = FactoryGirl.create(:rating, hotel: create(:hotel))
      expect(rating).to receive(:average_score)
      rating.run_callbacks(:save)
    end
  end
end
