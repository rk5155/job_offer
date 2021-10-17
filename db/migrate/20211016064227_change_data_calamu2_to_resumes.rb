class ChangeDataCalamu2ToResumes < ActiveRecord::Migration[5.1]
  def change
    change_column :resumes, :qualification_year1, :string
    change_column :resumes, :qualification_month1, :string

    change_column :resumes, :qualification_year2, :string
    change_column :resumes, :qualification_month2, :string

    change_column :resumes, :qualification_year3, :string
    change_column :resumes, :qualification_month3, :string

    change_column :resumes, :qualification_year4, :string
    change_column :resumes, :qualification_month4, :string

    change_column :resumes, :qualification_year5, :string
    change_column :resumes, :qualification_month5, :string    
  end
end
