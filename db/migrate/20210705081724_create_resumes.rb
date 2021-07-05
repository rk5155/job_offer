class CreateResumes < ActiveRecord::Migration[5.1]
  def change
    create_table :resumes do |t|
      t.string :spouse
      t.string :dependent_support
      t.integer :dependents
      t.string :employment_status
      t.integer :annual_Income
      t.integer :experience
      t.string :Experienced
      t.string :occupation
      t.integer :years_of_experience
      
      t.string :company_name1
      t.integer :period_year_from1
      t.integer :period_month_from1
      t.integer :period_year_to1
      t.integer :period_month_to1
      t.boolean :status1
      t.string :employment_status1
      t.string :industry1
      t.integer :capital1
      t.integer :number_of_employees1
      t.string :final_position1
      t.text :job_description1
      t.text :reason_retirement1

      t.string :company_name2
      t.integer :period_year_from2
      t.integer :period_month_from2
      t.integer :period_year_to2
      t.integer :period_month_to2
      t.boolean :status2
      t.string :employment_status2
      t.string :industry2
      t.integer :capital2
      t.integer :number_of_employees2
      t.string :final_position2
      t.text :job_description2
      t.text :reason_retirement2

      t.string :company_name3
      t.integer :period_year_from3
      t.integer :period_month_from3
      t.integer :period_year_to3
      t.integer :period_month_to3
      t.boolean :status3
      t.string :employment_status3
      t.string :industry3
      t.integer :capital3
      t.integer :number_of_employees3
      t.string :final_position3
      t.text :job_description3
      t.text :reason_retirement3

      t.string :qualification1
      t.integer :qualification_year1
      t.integer :qualification_month1
      t.string :qualification2
      t.integer :qualification_year2
      t.integer :qualification_month2
      t.string :qualification3
      t.integer :qualification_year3
      t.integer :qualification_month3
      t.string :qualification4
      t.integer :qualification_year4
      t.integer :qualification_month4
      t.string :qualification5
      t.integer :qualification_year5
      t.integer :qualification_month5
      t.string :language

      t.text :pr
      t.text :motivation

      t.text :hope

      t.timestamps
    end
  end
end
