class CreateGuardians < ActiveRecord::Migration
  def change
    create_table :guardians do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.date :date_of_birth 
      t.string :education
      t.string :occupation
      t.integer :income
      t.integer :guardian_contact_detail_id 
      t.integer :student_id
       
      t.timestamps
    end
  end
end
