class AddContentToScrapings < ActiveRecord::Migration[5.1]
  def change
    add_column :scrapings, :content, :text
    add_column :scrapings, :company_id, :integer
  end
end
