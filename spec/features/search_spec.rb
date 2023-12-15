require 'rails_helper'

RSpec.describe "Fire Nation Search" do
  it 'can search for members of the fire nation' do
    # When I visit "/"
    visit root_path
    # And I Select "Fire Nation" from the select field
    select "Fire Nation", from: :nation
    # And I click "Search For Members"
    click_button "Search For Members"
    # Then I should be on page "/search"
    expect(current_path).to eq(search_path)
    # Then I should see the total number of people who live in the Fire Nation. (should be close to 100)
    expect(page).to have_content("Total Population:")
    # And I should see a list with the detailed information for the first 25 members of the Fire Nation.
    expect(page).to have_content("Members of the fire nation")
    # And for each of the members I should see:
    expect(page).to have_content("Name: Azula")
    # - The name of the member (and their photo, if they have one)
    # - The list of allies or "None"
    expect(page).to have_content("Allies:")
    # - The list of enemies or "None"
    expect(page).to have_content("Enemies:")
    # - Any affiliations that the member has
    expect(page).to have_content("Affiliations:")
  end
end
