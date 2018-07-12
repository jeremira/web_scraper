require 'rails_helper'

RSpec.describe Scraper, type: :model do
  let(:scraper) { create :scraper}

  it "has a valid factory" do
    expect(scraper).to be_valid
  end
  it "require a Url" do
    scraper.url = nil
    expect(scraper).to_not be_valid
  end

  describe "#updated_content" do
    context "Last update : 4 minutes ago" do
      it "return same content" do
        scraper.updated_at = Time.zone.now - 4*60
        expect(scraper.updated_content).to eq "factory_content"
      end
    end
    context "Last update : 5 minutes ago" do
      it "return an updated content" do
        scraper.updated_at = Time.zone.now - 5*60
        expect(scraper.updated_content).to eq "updated_content"
      end
    end
    context "Last update : 6 minutes ago" do
      it "return an updated content" do
        scraper.updated_at = Time.zone.now - 6*60
        expect(scraper.updated_content).to eq "updated_content"
      end
    end
  end

end
