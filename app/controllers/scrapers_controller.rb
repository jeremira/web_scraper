class ScrapersController < ApplicationController

  def new
    @scraper = Scraper.find_by(id: params[:id]) || Scraper.new
  end

  def create
    @scraper = Scraper.find_by(url: scraper_params[:url]) || Scraper.new(url: scraper_params[:url])
    @scraper.updated_content
    # Get content for the new scraper
    if @scraper.save
      redirect_to new_scraper_path(params: {id: @scraper.id}), notice: "Got webpage and saved it !"
    else
      redirect_to new_scraper_path, alert: "Something went wrong..."
    end
  end

  def index
  end

  private

  def scraper_params
    params.permit(:url)
  end

end
