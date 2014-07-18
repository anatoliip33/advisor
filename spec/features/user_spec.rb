require 'spec_helper'

feature 'Guest signs up' do
  scenario "with valid email and password" do
    sign_up_with 'valid@example.com', 'password'

    expect(page).to have_content('Logout')
  end

  scenario 'with invalid email' do
    sign_up_with 'invalid_email', 'password'

    expect(page).to have_content('Login')
  end

  scenario 'with blank password' do
    sign_up_with 'valid@example.com', ' '

    expect(page).to have_content('Login')
  end
end
