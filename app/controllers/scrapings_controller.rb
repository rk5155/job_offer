class ScrapingsController < ApplicationController
  def index
    @scraping = Scraping.all
  end

  def search
    @posts = Scraping.search(params[:title], params[:status], params[:location])
  end

  def new
    @scraping = Scraping.new
    @id = params[:id]
  end

  def show
    @scraping = Scraping.find(params[:id])
  end

  def edit
    @scraping = Scraping.find(params[:id])
  end

  def update
    @scraping = Scraping.find(params[:id])
    if @scraping.update_attributes(scraping_params)
      flash[:success] = "編集しました。"
      redirect_to @scraping
    else
      render 'edit'
    end
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
      params.require(:scraping).permit(:name,:location,:salary,:holiday,:application,
                                      :application,:title,:section,:rewarding,:target,:image,:location1,:location2,:location3,:location4,:location5,
                                      :transportation,:under,:up,:supplement,:conditions,:application,:number,:selection, status: [])
  end
end
