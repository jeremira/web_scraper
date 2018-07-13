class Scraper < ApplicationRecord

  validates :url, presence: true

  # Refresh content if older than the time limit
  # Return the content
  def updated_content
    # Setup timestamp for new record
    self.updated_at = self.updated_at || Time.zone.now
    if self.updated_at < update_time_limit
      #update content with scrawler
      begin
        self.content = WebCrawler.new(self.url).get_webpage
        self.content
      rescue
        self.content
      end
    else
      self.content
    end
  end

  private

  def update_time_limit
    # 5minutes limit
    Time.zone.now - 5*60
  end

end
