class Scraper < ApplicationRecord

  validates :url, presence: true

  # Refresh content if older than the time limit
  # Return the content
  def updated_content
    if self.updated_at < update_time_limit
      #update content with scrawler
      self.content = "updated_content"
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
