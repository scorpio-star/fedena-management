class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.integer :student_id
      t.string :first_name
      t.string :relation
      t.string :last_name
      t.date :date_of_birth 
      t.string :education
      t.string :occupation
      t.integer :income
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.integer :country_id
      t.integer :phone_1
      t.integer :phone_2
      t.integer :mobile
       
      t.timestamps
    end
  end
end
