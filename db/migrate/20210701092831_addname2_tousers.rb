class Addname2Tousers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name2, :string
    add_column :users, :furigana, :string
    add_column :users, :furigana2, :string
  end
end
