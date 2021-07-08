class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :office_name
      t.string :title
      t.string :section
      t.string :status
      t.text :content
      t.text :rewarding
      t.text :target
      t.string :image

      t.string :location1
      t.string :location2
      t.string :location3
      t.string :location4
      t.string :location5
      t.string :location6
      t.string :location7
      t.text :transportation
      t.string :salary
      t.integer :under
      t.integer :up
      t.text :supplement
      t.text :conditions

      t.string :application
      t.integer :number
      t.text :selection
      
      t.timestamps
    end
  end
end
