class WebCrawler
  # Will get content from an web page
  # Return a string

  require 'open-uri'

  attr_accessor :content

  def initialize(url)
    raise ArgumentError, "No Url was provided" if !url
    @content = Nokogiri::HTML(open(url.to_s)).to_html
  end

end
