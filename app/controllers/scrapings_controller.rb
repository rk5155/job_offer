class ScrapingsController < ApplicationController
  def index
    @scraping = Scraping.all
  end
end
