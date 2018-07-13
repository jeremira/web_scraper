class WebCrawler
  # Will get content from an web page

  require 'open-uri'

  attr_accessor :url
  attr_reader :content

  def initialize(url)
    @url = url
  end

  def get_webpage(url =@url)
    @content = Nokogiri::HTML(open(url.to_s)).to_html
  end


end
