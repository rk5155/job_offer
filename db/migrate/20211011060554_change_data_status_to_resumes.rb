class ChangeDataStatusToResumes < ActiveRecord::Migration[5.1]
  def change
    change_column :resumes, :status1, :string
    change_column :resumes, :status2, :string
    change_column :resumes, :status3, :string
  end
end
