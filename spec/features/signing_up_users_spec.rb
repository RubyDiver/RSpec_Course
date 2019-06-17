require 'rails_helper'

RSpec.feature "Signing Up" do
  scenario "User signing up" do

    visit "/"

    click_link "Sign up"

    fill_in "Email", with: "User@example.com"
    fill_in "Password", with: "Password"
    fill_in "Password confirmation", with: "Password"
    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully.")
  end

  scenario "User not signing up" do

    visit "/"

    click_link "Sign up"
    fill_in "Email", with: ""
    fill_in "Password", with: ""
    fill_in "Password confirmation", with: ""
    click_button "Sign up"

    # expect(page).to have_content("You have not signed up successfully.")
  end
end