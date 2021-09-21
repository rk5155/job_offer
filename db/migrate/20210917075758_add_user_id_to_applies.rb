class AddUserIdToApplies < ActiveRecord::Migration[5.1]
  def change
    add_column :applies, :user_id, :integer
    add_column :applies, :job_title, :string
    add_column :applies, :job_url, :integer
  end
end
