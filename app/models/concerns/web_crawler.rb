class WebCrawler
  # Will get content from an web page

  require 'open-uri'

  attr_accessor :url
  attr_reader :content

  def initialize(url)
    @url = url
  end

  #  doc = Nokogiri::HTML(open('https://www.abokifx.com/', :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE))

  def get_webpage(url =@url)
    begin
      @content = Nokogiri::HTML(open(url.to_s)).to_html
    rescue
      @content = "Could not fetch this webpage : #{url}."
    end
  end


end
