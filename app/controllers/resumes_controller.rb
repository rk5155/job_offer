class ResumesController < ApplicationController
  def new
    @resume = Resume.new
  end

  def create
    @resume = Resume.new(resume_params)

    @current_user_count = Resume.where(user_devise_id: current_user_devise.id).length

    if @current_user_count > 0
      flash[:success] = "履歴書はすでに登録されています。"
      redirect_to(new_resume_path)

    else

      if @resume.save
        # 保存の成功をここで扱う。
        flash[:success] = "登録完了しました"
        render 'edit'
      else
          render 'new'
      end

    end

    
end

def show
  @resume = Resume.where(user_devise_id: current_user_devise.id)
  
  @resume.each do |ele|
    @user_devise_id = ele.user_devise_id
    @hope = ele.hope

    @company_name1 = ele.company_name1
    @period_year_from1 = ele.period_year_from1
    @period_month_from1 = ele.period_month_from1
    @period_year_to1 = ele.period_year_to1
    @period_month_to1 = ele.period_month_to1

    @company_name2 = ele.company_name2
    @period_year_from2 = ele.period_year_from2
    @period_month_from2 = ele.period_month_from2
    @period_year_to2 = ele.period_year_to2
    @period_month_to2 = ele.period_month_to2

    @company_name3 = ele.company_name3
    @period_year_from3 = ele.period_year_from3
    @period_month_from3 = ele.period_month_from3
    @period_year_to3 = ele.period_year_to3
    @period_month_to3 = ele.period_month_to3

    @qualification1 = ele.qualification1
    @qualification_year1 = ele.qualification_year1
    @qualification_month1 = ele.qualification_month1

    @qualification2= ele.qualification2
    @qualification_year2 = ele.qualification_year2
    @qualification_month2 = ele.qualification_month2

    @qualification3 = ele.qualification3
    @qualification_year3 = ele.qualification_year3
    @qualification_month3 = ele.qualification_month3

    @qualification4 = ele.qualification4
    @qualification_year4 = ele.qualification_year4
    @qualification_month4 = ele.qualification_month4

    @qualification5 = ele.qualification5
    @qualification_year5 = ele.qualification_year5
    @qualification_month5 = ele.qualification_month5

    @updated_at_year = ele.updated_at.year
    @updated_at_month = ele.updated_at.month
    @updated_at_day = ele.updated_at.day

  end

  @user_devise = UserDevise.find(@user_devise_id)

  respond_to do |format|
    format.html
     format.pdf do
       render pdf: 'filename',   # PDF名
              template: 'resumes/show.html.erb', # viewを対象にする
              orientation: 'Landscape', #　　横向き
              page_size: 'A4', # ページサイズ
              :encoding => 'UTF-8'
              
     end
   end
 end

 def edit
  @resume = Resume.find(params[:id])

  user_control(@resume.user_devise_id)
 end

 def update
    @resume = Resume.find(params[:id])
    if @resume.update_attributes(resume_params)
      flash[:success] = "編集しました。"
      redirect_to mypage_user_devises_path
    else
      render 'edit'
    end
 end

private

def resume_params
    params.require(:resume).permit(:spouse, :dependent_support, :dependents, :employment_status,
                                 :annual_Income, :furigana, :furigana2,
                                  :year, :month, :experience, :Experienced, :occupation, :years_of_experience,
                                  :company_name1, :period_year_from1, :period_month_from1, :period_year_to1,
                                  :period_month_to1, :status1, :employment_status1, :industry1, :capital1, :number_of_employees1, :final_position1, :job_description1, :reason_retirement1,
                                   :qualification1, :qualification_year1, :qualification_month1,
                                   :company_name2, :period_year_from2, :period_month_from2, :period_year_to2,
                                  :period_month_to2, :status2, :employment_status2, :industry2, :capital2, :number_of_employees2, :final_position2, :job_description2, :reason_retirement2,
                                   :qualification2, :qualification_year2, :qualification_month2,
                                   :company_name3, :period_year_from3, :period_month_from3, :period_year_to3,
                                  :period_month_to3, :status3, :employment_status3, :industry3, :capital3, :number_of_employees3, :final_position3, :job_description3, :reason_retirement3,
                                   :qualification3, :qualification_year3, :qualification_month3,
                                   :qualification4, :qualification_year4, :qualification_month4,
                                   :qualification5, :qualification_year5, :qualification_month5,
                                   :language, :language2, :language3, :language4, :language5,
                                   :pr, :motivation, :hope, :user_devise_id)
end
end
