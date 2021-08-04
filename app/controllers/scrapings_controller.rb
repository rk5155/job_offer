class ScrapingsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  def index
    @scraping = Scraping.all
  end

  def search
    #:qは検索窓に入力された値をパラメータで取得
    # name_cont_any location_cont_any をスペース区切りで配列にし、複数検索
    # 勤務地から探すを押した時、name_cont_any がnilだとエラーになるから
    if params[:q]['name_cont_any'] != nil
      params[:q]['name_cont_any'] = params[:q]['name_cont_any'].split(/[\p{blank}\s]+/)
    end
    
    params[:q]['location_cont_any'] = params[:q]['location_cont_any'].split(/[\p{blank}\s]+/)
    
    @q = Scraping.ransack(params[:q])
    @results = @q.result
  end

  def set_q
    @q = Scraping.ransack(params[:q])
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
        render 'new'
    else
        render 'new'
    end
  end

  private

  def scraping_params
      params.require(:scraping).permit(:name,:location,:salary,:holiday,:application,
                                      :application,:title,:section,:rewarding,:target,:image,:location1,:location2,:location3,:location4,:location5,
                                      :transportation,:under,:up,:supplement,:conditions,:application,:number,:selection,:content,:company_id,status: [])
  end
end
