class AddStatusToScraping < ActiveRecord::Migration[5.1]
  def change
    add_column :scrapings, :status, :string
  end
end
