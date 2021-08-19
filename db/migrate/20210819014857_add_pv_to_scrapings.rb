class AddPvToScrapings < ActiveRecord::Migration[5.1]
  def change
    add_column :scrapings, :pv, :integer
  end
end
