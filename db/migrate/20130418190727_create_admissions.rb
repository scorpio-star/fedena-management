class CreateAdmissions < ActiveRecord::Migration
  def change
    create_table :admissions do |t|
      t.integer :number
      t.date :admission_date
      t.integer :student_id

      t.timestamps
    end
  end
end
