class ChangeDataCalamuToResumes < ActiveRecord::Migration[5.1]
  def change
    change_column :resumes, :period_year_from1, :string
    change_column :resumes, :period_month_from1, :string
    change_column :resumes, :period_year_to1, :string
    change_column :resumes, :period_month_to1, :string
    
    change_column :resumes, :period_year_from2, :string
    change_column :resumes, :period_month_from2, :string
    change_column :resumes, :period_year_to2, :string
    change_column :resumes, :period_month_to2, :string

    change_column :resumes, :period_year_from3, :string
    change_column :resumes, :period_month_from3, :string
    change_column :resumes, :period_year_to3, :string
    change_column :resumes, :period_month_to3, :string
  end
end
