require 'rails_helper'

RSpec.feature "User", :type => :feature do
  given!(:user) { FactoryGirl.create(:user) }
  scenario "Create a new user" do
    visit "/users/new"

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Confirmation', with: user.password_confirmation

    click_button "Submit"

    expect(page).to have_text("Invalid form")
  end
end
