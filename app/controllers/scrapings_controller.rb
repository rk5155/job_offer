class ScrapingsController < ApplicationController
  def index
    @scraping = Scraping.all
  end

  def search
    @posts = Scraping.search(params[:search])
  end
end
