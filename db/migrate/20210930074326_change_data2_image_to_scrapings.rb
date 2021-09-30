class ChangeData2ImageToScrapings < ActiveRecord::Migration[5.1]
  def change
    change_column :scrapings, :image, :string
  end
end
