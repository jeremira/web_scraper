require 'rails_helper'

RSpec.feature "RootPages", type: :feature do
  scenario "A visitor can enter an url" do
    visit root_path
    expect(page).to have_content 'Enter a valid url :'
    fill_in 'url', with: 'www.google.com'
    click_button 'Scrap it!'
  end
end
