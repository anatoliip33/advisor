require 'spec_helper'

describe Rating do
  it "has a valid factory" do
    expect(FactoryGirl.build(:rating)).to be_valid
  end

  describe "average rating" do
    before :each do
      @hotel = FactoryGirl.create(:hotel)
    end

    it "should calculate hotel rating properly" do
      [1, 5].each do |r|
        FactoryGirl.create(:rating, score: r, hotel: @hotel)
      end
      expect(@hotel.rating).to eq(3)
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
