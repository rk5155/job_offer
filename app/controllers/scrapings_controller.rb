class ScrapingsController < ApplicationController
  before_action :set_q, only: [:index, :search]

  impressionist :actions=> [:show]

  def index
    @scraping = Scraping.all.order(id: "DESC")
    
    @hokaido = Scraping.where("location LIKE ?", "%北海道%")
    @tokyo = Scraping.where("location LIKE ?", "%東京%")
    @aichi = Scraping.where("location LIKE ?", "%愛知%")
    @osaka = Scraping.where("location LIKE ?", "%大阪%")
    @hukuoka = Scraping.where("location LIKE ?", "%福岡%")
    @okinawa = Scraping.where("location LIKE ?", "%沖縄%")

  end

  def search
    #:qは検索窓に入力された値をパラメータで取得
    # name_cont_any location_cont_any をスペース区切りで配列にし、複数検索
    # 勤務地から探すを押した時、name_cont_any がnilだとエラーになるから
    if params[:q]['name_cont_any'] != nil
      params[:q]['name_cont_any'] = params[:q]['name_cont_any'].split(/[\p{blank}\s]+/)
    end

    if params[:q]['location_cont_any'] != nil
      params[:q]['location_cont_any'] = params[:q]['location_cont_any'].split(/[\p{blank}\s]+/)
    end
    
    
    @q = Scraping.ransack(params[:q])
    @total = @q.result.length
    @results = @q.result.page(params[:page]).per(15)
  end

  def set_q
    @q = Scraping.ransack(params[:q])
  end

  def new
    @scraping = Scraping.new
    @id = params[:id]
    @jobs = Scraping.where(company_id: @id)

    @jobs_hash = {};

    @jobs.each do |job|

      @jobs_hash.store(job.id, {name: job.name, title: job.title, section: job.section, status: job.status, content: job.content ,rewarding: job.rewarding,
                      target: job.target, location1: job.location1, location2: job.location2, location3: job.location3, location4: job.location4, transportation: job.transportation,
                      salary: job.salary, under: job.under, up: job.up, supplement: job.supplement, conditions: job.conditions, application: job.application, number: job.number, selection: job.selection })
    end
    

  end

  def show
    @scraping = Scraping.find(params[:id])
    impressionist(@scraping, nil, unique: [:session_hash])
    
    # 求人詳細ページのpv数を保存
    @scraping.pv = @scraping.impressionist_count
    @scraping.save
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
