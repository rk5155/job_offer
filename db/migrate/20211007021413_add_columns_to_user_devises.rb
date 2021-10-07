class AddColumnsToUserDevises < ActiveRecord::Migration[5.1]
  def change
    add_column :user_devises, :name2, :string
    add_column :user_devises, :furigane2, :string

    add_column :user_devises, :month, :integer
    add_column :user_devises, :day, :integer
    

    add_column :user_devises, :age, :integer

    add_column :user_devises, :postal, :string

    add_column :user_devises, :address2, :string
    add_column :user_devises, :address3, :string

    add_column :user_devises, :educational_yearfrom1, :string
    add_column :user_devises, :educational_yearto1, :string
    add_column :user_devises, :educational_monthfrom1, :string
    add_column :user_devises, :educational_monthto1, :string
    add_column :user_devises, :school1, :string

    add_column :user_devises, :educational_yearfrom2, :string
    add_column :user_devises, :educational_yearto2, :string
    add_column :user_devises, :educational_monthfrom2, :string
    add_column :user_devises, :educational_monthto2, :string
    add_column :user_devises, :school2, :string

    add_column :user_devises, :educational_yearfrom3, :string
    add_column :user_devises, :educational_yearto3, :string
    add_column :user_devises, :educational_monthfrom3, :string
    add_column :user_devises, :educational_monthto3, :string
    add_column :user_devises, :school3, :string

    add_column :user_devises, :educational_yearfrom4, :string
    add_column :user_devises, :educational_yearto4, :string
    add_column :user_devises, :educational_monthfrom4, :string
    add_column :user_devises, :educational_monthto4, :string
    add_column :user_devises, :school4, :string

    add_column :user_devises, :educational_yearfrom5, :string
    add_column :user_devises, :educational_yearto5, :string
    add_column :user_devises, :educational_monthfrom5, :string
    add_column :user_devises, :educational_monthto5, :string
    add_column :user_devises, :school5, :string


    add_column :user_devises, :career_yearfrom1, :string
    add_column :user_devises, :career_yearto1, :string
    add_column :user_devises, :career_monthfrom1, :string
    add_column :user_devises, :career_monthto1, :string
    add_column :user_devises, :company1, :string

    add_column :user_devises, :career_yearfrom2, :string
    add_column :user_devises, :career_yearto2, :string
    add_column :user_devises, :career_monthfrom2, :string
    add_column :user_devises, :career_monthto2, :string
    add_column :user_devises, :company2, :string

    add_column :user_devises, :career_yearfrom3, :string
    add_column :user_devises, :career_yearto3, :string
    add_column :user_devises, :career_monthfrom3, :string
    add_column :user_devises, :career_monthto3, :string
    add_column :user_devises, :company3, :string

    add_column :user_devises, :career_yearfrom4, :string
    add_column :user_devises, :career_yearto4, :string
    add_column :user_devises, :career_monthfrom4, :string
    add_column :user_devises, :career_monthto4, :string
    add_column :user_devises, :company4, :string

    add_column :user_devises, :career_yearfrom5, :string
    add_column :user_devises, :career_yearto5, :string
    add_column :user_devises, :career_monthfrom5, :string
    add_column :user_devises, :career_monthto5, :string
    add_column :user_devises, :company5, :string

    add_column :user_devises, :career_yearfrom6, :string
    add_column :user_devises, :career_yearto6, :string
    add_column :user_devises, :career_monthfrom6, :string
    add_column :user_devises, :career_monthto6, :string
    add_column :user_devises, :company6, :string

    add_column :user_devises, :image, :string

    add_column :user_devises, :release, :boolean
  end
end
