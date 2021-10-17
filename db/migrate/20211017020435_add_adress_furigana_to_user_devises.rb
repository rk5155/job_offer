class AddAdressFuriganaToUserDevises < ActiveRecord::Migration[5.1]
  def change
    add_column :user_devises, :adress_furugana, :string
  end
end
