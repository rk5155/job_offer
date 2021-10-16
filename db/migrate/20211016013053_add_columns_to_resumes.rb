class AddColumnsToResumes < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :language2, :string
    add_column :resumes, :language3, :string
    add_column :resumes, :language4, :string
    add_column :resumes, :language5, :string
  end
end
