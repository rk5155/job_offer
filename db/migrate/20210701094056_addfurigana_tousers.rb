class AddfuriganaTousers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :year, :integer
    add_column :users, :month, :integer
    add_column :users, :day, :integer
  end
end
