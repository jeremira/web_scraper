class Scraper < ApplicationRecord

  validates :url, presence: true

  def update_and_return_content
    # update si necessaire 
    # return content
  end

end
