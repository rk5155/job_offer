class AddUserDeviseIdToResumes < ActiveRecord::Migration[5.1]
  def change
    add_column :resumes, :user_devise_id, :integer
  end
end
