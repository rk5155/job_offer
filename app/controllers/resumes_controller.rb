class ResumesController < ApplicationController
  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)
    if @resume.save
        # 保存の成功をここで扱う。
        flash[:success] = "登録完了しました"
        redirect_to(root_url)
    else
        render 'new'
    end
end

private

def resume_params
    params.require(:resume).permit(:spouse, :dependent_support, :dependents, :employment_status,
                                 :annual_Income, :furigana, :furigana2,
                                  :year, :month, :experience, :Experienced, :occupation, :years_of_experience,
                                  :company_name1, :period_year_from1, :period_month_from1, :period_year_to1,
                                  :period_month_to1, :status1, :employment_status1, :industry1, :capital1, :number_of_employees1, :final_position1, :job_description1, :reason_retirement1,
                                   :qualification1, :qualification_year1, :qualification_month1, :language, :pr, :motivation, :hope)
end
end