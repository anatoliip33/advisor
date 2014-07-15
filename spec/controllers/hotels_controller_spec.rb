require 'spec_helper'
require 'rack/test'
require 'faker'

describe HotelsController do
  let(:user) { FactoryGirl.create(:user) }
  let(:hotel) { FactoryGirl.create(:hotel) }


  let(:adress) { FactoryGirl.create(:adress) }

  let(:valid_attributes) { attributes_for(:hotel) }
  let(:invalid_attributes) { attributes_for(:invalid_hotel) }

  before :each do
    allow(Hotel).to receive(:persisted?).and_return(true)
    allow(Hotel).to receive(:find).with(hotel.id.to_s).and_return(hotel)
    allow(Hotel).to receive(:save).and_return(true)
  end

  shared_examples("public access to hotels") do
    describe "GET #index" do
      before :each do
        get :index
      end

      it "populates a catalog of hotels" do
        expect(response).to be_success
      end

      it "renders the :index view" do
        expect(response).to render_template :index
      end
    end
  end

  shared_examples("full access to hotels") do
    describe "GET #show" do
      before :each do
        allow(Hotel).to receive(:find).with(hotel.id.to_s).and_return(hotel)
        get :show, id: hotel
      end

      it "assigns the requested hotel to @hotel" do
        expect(assigns(:hotel)).to eq hotel
      end

      it "renders the :show template" do
        expect(response).to render_template :show
      end
    end

    describe "GET #new" do
      before :each do
        get :new
      end

      it "assigns a new Hotel to @hotel" do
        expect(assigns(:hotel)).to be_a_new(Hotel)
      end

      it "assigns an adress to the new hotel" do
        adress = assigns(:hotel).adress
      end

      it "renders the :new template" do
        expect(response).to render_template :new
      end
    end

    describe "POST #create" do
      context "with valid attributes" do
        before :each do
          post :create, hotel: attributes_for(:hotel, adress_attributes: adress)
        end

        it "creates a new hotel" do
          expect(Hotel.exists?(assigns(:hotel))).to be_true
        end

        it "redirects to the new hotel" do
          expect(response).to redirect_to Hotel.last
        end
      end

      context "with invalid attributes" do
        before :each do
          post :create, hotel: attributes_for(:invalid_hotel)
        end

        it "does not save the new hotel" do
          expect(Hotel.exists?(hotel)).to be_false
        end

        it "re-renders the new method" do
          expect(response).to render_template :new
        end
      end
    end

    describe "PATCH #update" do
      it "located the requested @hotel" do
        allow(hotel).to receive(:update).with(valid_attributes.stringify_keys) { true }
        patch :update, id: hotel, hotel: valid_attributes
        expect(assigns(:hotel)).to eq hotel
      end

      it "redirects to the updated hotel" do
        patch :update, id: hotel, hotel: FactoryGirl.attributes_for(:hotel)
        expect(response).to redirect_to hotel
      end
    end
  end

  describe "user access" do
    before :each do
      allow(controller).to receive(:current_user).and_return(user)
    end

    it_behaves_like "public access to hotels"
    it_behaves_like "full access to hotels"
  end

  describe "guest access" do
    it_behaves_like "public access to hotels"

    describe 'GET #show' do
      it "requires login" do
        get :show, id: hotel
        expect(response).to require_login
      end
    end

    describe 'GET #new' do
      it "requires login" do
        get :new
        expect(response).to require_login
      end
    end

    describe "POST #create" do
      it "requires login" do
        post :create, hotel: attributes_for(:hotel)
        expect(response).to require_login
      end
    end

    describe 'PATCH #update' do
      it "requires login" do
        patch :update, id: hotel, hotel: attributes_for(:hotel)
        expect(response).to require_login
      end
    end
  end

end
