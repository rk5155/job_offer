class ChangeDataNumberToScrapings < ActiveRecord::Migration[5.1]
  def change
    change_column :scrapings, :number, :string
  end
end
