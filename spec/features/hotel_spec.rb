require 'spec_helper'

feature "New hotels" do
  context "as a user" do
    scenario "adds a new hotel" do
      user = create(:user)
      sign_in
      visit '/hotels'

      expect(page).to_not have_content "New Hotel"
      first(:link, 'Add Hotel').click

      fill_in "Title", with: "New Hotel"
      fill_in "Description", with: "Very large and airy hotel with perfect service"
      fill_in "Price", with: 20.00
      check("Breakfast included? (yes/no)")
      attach_file "Photo", Rails.root.join('spec/assets/hotel/hotel-12.jpg')
      select "Ukraine", from: "Country"
      fill_in "State", with: "Vinnitskay"
      fill_in "City", with: "Vinnitsa"
      fill_in "Street", with: "Lyaly Ratushnaya"
      click_button "Create Hotel"

      expect(current_path).to eq(hotel_path(Hotel.first))
      expect(page).to have_content "Hotel was successfully created"
    end
  end

  context "as a guest" do
    scenario "watchs a new hotel" do
      visit '/hotels'
      expect(page).to_not have_content "New Hotel"
      first(:link, 'Add Hotel').click

      expect(page.current_path).to eq new_user_session_path
    end
  end
end
