class Scraper < ApplicationRecord

  validates :url, presence: true

  # Refresh content if older than the time limit
  # Return the content
  def updated_content
    if !self.content || self.updated_at < expiration_time
      #update content with scrawler
      begin
        crawler = WebCrawler.new(self.url)
        self.content = crawler.get_webpage
        self.save
        self.content
      rescue
        self.content
      end
    else
      self.content
    end
  end

  private

  def expiration_time
    # 5 minutes limit
    Time.zone.now - 5*60
  end

end
