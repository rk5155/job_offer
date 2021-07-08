class JobsController < ApplicationController
  def new
    @job = Job.new
  end

  def create
    @resume = Job.new(job_params)
    if @resume.save
        # 保存の成功をここで扱う。
        flash[:success] = "登録完了しました"
        redirect_to(root_url)
    else
        render 'new'
    end
  end


  private

  def job_params
    params.require(:job).permit(:office_name, :title, :section,
                                 :content, :rewarding, :target,
                                  :image, :location1, :location2, :location3, :location4, :location5,
                                  :location6, :location7, :transportation, :salary,
                                  :under, :up, :supplement, :conditions, :application, :number, :selection, status: [])
  end
end
