class ScrapingsController < ApplicationController
  def index
    @scraping = Scraping.all
  end

  def search
    @posts = Scraping.search(params[:title], params[:status], params[:location])
  end

  def new
    @scraping = Scraping.new
  end

  def create
    @scraping = Scraping.new(scraping_params)
    if @scraping.save
        # 保存の成功をここで扱う。
        flash[:success] = "登録しました。"
        render 'index'
    else
        render 'new'
    end
  end

  private

  def scraping_params
      params.require(:scraping).permit(:name,:status,:location,:salary,:holiday,:application,:name,:name)
  end
end
