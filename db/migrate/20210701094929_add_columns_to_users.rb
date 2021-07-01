class AddColumnsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :sex, :string
    add_column :users, :postal_code, :integer
    add_column :users, :prefectures, :string
    add_column :users, :municipality, :string
    add_column :users, :address, :string
    add_column :users, :phone_number, :integer
  end
end
