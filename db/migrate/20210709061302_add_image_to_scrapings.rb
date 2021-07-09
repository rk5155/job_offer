class AddImageToScrapings < ActiveRecord::Migration[5.1]
  def change
    add_column :scrapings, :time, :text
    add_column :scrapings, :location, :text
    add_column :scrapings, :salary, :text
    add_column :scrapings, :bonus, :text
    add_column :scrapings, :allowance, :text
    add_column :scrapings, :holiday, :text
    add_column :scrapings, :welfare, :text
    add_column :scrapings, :other, :text
  end
end
