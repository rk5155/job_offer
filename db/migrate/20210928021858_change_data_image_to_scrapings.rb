class ChangeDataImageToScrapings < ActiveRecord::Migration[5.1]
  def change
    change_column :scrapings, :image, :binary
  end
end
