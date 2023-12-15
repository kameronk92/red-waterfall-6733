require 'rails_helper'

describe 'CharacterFacade' do
  feature '#by_nation' do
    scenario 'fire nation dropdown is selected and Search For Members Button is Clicked' do
      visit root_path
      select "Fire Nation", from: :nation
      click_button "Search For Members"
      expect(page.status_code).to eq(200)
      expect(page).to have_content("Azula")
    end
  end
end