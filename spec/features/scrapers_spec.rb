require 'rails_helper'

RSpec.feature "Get and save webpage", type: :feature do
  let(:scraper) {create :scraper}

  scenario "A visitor enter an url" do
    visit root_path
    expect(page).to have_content 'Enter a valid url :'
    fill_in 'url', with: 'www.example.com'
    click_button 'Scrap it!'
    expect(page).to have_content("Got webpage and saved it !")
  end

  scenario "A visitor enter same url" do
    visit root_path
    expect(page).to have_content 'Enter a valid url :'
    fill_in 'url', with: 'www.example.com'
    click_button 'Scrap it!'
    expect(page).to have_content("Got webpage and saved it !")
    expect(Scraper.count).to eq 1
    visit root_path
    expect(page).to have_content 'Enter a valid url :'
    fill_in 'url', with: 'www.example.com'
    click_button 'Scrap it!'
    expect(page).to have_content("Got webpage and saved it !")
    expect(Scraper.count).to eq 1
  end

end
