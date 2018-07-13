require 'rails_helper'

RSpec.describe WebCrawler do
  let(:crawler) {WebCrawler.new("http://example.com")}


  describe "Initialization" do
    it "raise an Argument error when no Url are provided" do
      expect{WebCrawler.new()}.to raise_error ArgumentError
    end
    it "setup @url" do
      expect(crawler.url).to eq "http://example.com"
    end
  end

  describe "#get_webpage" do
    it "open the webpage" do
      expect(crawler).to receive(:open).with("http://example.com")
      crawler.get_webpage
    end
    it "save the webpage content" do
      expect(crawler).to receive(:open).with("http://example.com").and_return("content_from_web")
      crawler.get_webpage
      expect(crawler.content).to match /content_from_web/
    end
  end

end
