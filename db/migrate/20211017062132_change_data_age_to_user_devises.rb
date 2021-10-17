class ChangeDataAgeToUserDevises < ActiveRecord::Migration[5.1]
  def change
    change_column :user_devises, :age, :string
  end
end
