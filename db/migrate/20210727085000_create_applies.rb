class CreateApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :applies do |t|
      t.string :name
      t.string :number
      t.string :email
      t.references :company, foreign_key: true

      t.timestamps
    end
    add_index :applies, [:company_id, :created_at]
  end
end
