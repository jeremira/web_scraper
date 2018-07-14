class ScrapersController < ApplicationController

  def new
    @scraper = Scraper.find_by(id: params[:id]) || Scraper.new
  end

  # Render scraped webpage content for the iframe
  def show
    @scraper = Scraper.find_by(id: params[:id])
    if @scraper
      render html: @scraper.content.try(:html_safe)
    else
      render html: ''
    end
  end

  def index
    @scrapers = Scraper.order(:url)
  end

  def create
    @scraper = Scraper.find_or_create_by(url: scraper_params[:url])
    if @scraper
      @scraper.updated_content
      redirect_to new_scraper_path(params: {id: @scraper.id}), notice: "Got webpage and saved it !"
    else
      redirect_to new_scraper_path, alert: "Something went wrong..."
    end
  end

  private

  def scraper_params
    params.permit(:url)
  end

end
