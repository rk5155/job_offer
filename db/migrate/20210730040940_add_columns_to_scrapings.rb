class AddColumnsToScrapings < ActiveRecord::Migration[5.1]
  def change
    add_column :scrapings, :title, :string
    add_column :scrapings, :section, :string
    add_column :scrapings, :rewarding, :text
    add_column :scrapings, :target, :text
    add_column :scrapings, :image, :string
    add_column :scrapings, :location1, :string
    add_column :scrapings, :location2, :string
    add_column :scrapings, :location3, :string
    add_column :scrapings, :location4, :string
    add_column :scrapings, :location5, :string
    add_column :scrapings, :transportation, :text
    add_column :scrapings, :under, :string
    add_column :scrapings, :up, :string
    add_column :scrapings, :supplement, :text
    add_column :scrapings, :conditions, :text
    add_column :scrapings, :application, :string
    add_column :scrapings, :number, :integer
    add_column :scrapings, :selection, :text
  end
end
