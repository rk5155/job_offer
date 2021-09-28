class ChangeDataNumberToUserDevises < ActiveRecord::Migration[5.1]
  def change
    change_column :user_devises, :number, :string
  end
end
