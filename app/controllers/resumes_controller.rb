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
        redirect_to(root_url)
      else
          render 'new'
      end

    end

    
end

def show
  @resume = Resume.find(current_user_devise.id)

  @user_devise = UserDevise.find(@resume.user_devise_id)

  respond_to do |format|
    format.html
     format.pdf do
       render pdf: 'filename',   # PDF名
              template: 'resumes/show.html.erb', # viewを対象にする
              orientation: 'Landscape', #　　横向き
              page_size: 'A4', # ページサイズ
              show_as_html: params.key?('debug')
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
      redirect_to @resume
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
                                   :qualification1, :qualification_year1, :qualification_month1, :language, :pr, :motivation, :hope, :user_devise_id)
end
end
