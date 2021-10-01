class AddColumnsToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :image, :string
    add_column :companies, :location, :string
    add_column :companies, :contents, :text
    add_column :companies, :established, :string
    add_column :companies, :number, :string
    add_column :companies, :site, :string
  end
end
