require 'rails_helper'

RSpec.describe WebScrawler do

  before :each do
    allow(Nokogiri::HTML::Document).to receive(:parse).and_return("Content_from_my_url")
  end

  context "Initialization" do
    it "raise an Argument error when no Url are provided" do
      expect(WebScrawler.new()).to raise_error ArgumentError
    end
    it "setup @content" do
      expect(WebScrawler.new("my_url").content).to eq "Content_from_my_url"
    end
  end

end
