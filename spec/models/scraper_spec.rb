require 'rails_helper'

RSpec.describe Scraper, type: :model do
  let(:scraper) { create :scraper}

  it "has a valid factory" do
    expect(scraper).to be_valid
  end
  it "require a Url" do
    exoect(scraper, url: nil).to_not be_valid
  end

end
