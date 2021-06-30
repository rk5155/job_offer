class ScrapingsController < ApplicationController
  def index
    @scraping = Scraping.all
  end

  def search
    @posts = Scraping.search(params[:title], params[:status])
  end
end
