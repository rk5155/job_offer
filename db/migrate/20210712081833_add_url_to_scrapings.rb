class AddUrlToScrapings < ActiveRecord::Migration[5.1]
  def change
    add_column :scrapings, :url, :string
  end
end
