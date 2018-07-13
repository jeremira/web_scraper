require 'rails_helper'

RSpec.feature "Get and save webpage", type: :feature do

  scenario "A visitor enter an url" do
    visit root_path
    expect(page).to have_content 'Enter a valid url :'
    fill_in 'url', with: 'www.example.com'
    click_button 'Scrap it!'
    expect(page).to have_content("Got webpage and saved it !")
    expect(page).to have_content("Example Domain")
  end

end
