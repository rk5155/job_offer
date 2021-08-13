class AddNameFriganaBirthdaySexProfessionNumberAddressPrToUserDevises < ActiveRecord::Migration[5.1]
  def change
    add_column :user_devises, :name, :string 
    add_column :user_devises, :furigane, :string
    add_column :user_devises, :birthday, :string
    add_column :user_devises, :sex, :string
    add_column :user_devises, :profession, :string
    add_column :user_devises, :career, :text
    add_column :user_devises, :number, :integer
    add_column :user_devises, :address, :string
    add_column :user_devises, :pr, :text
  end
end
