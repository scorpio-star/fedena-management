class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :student_id
      t.integer :education_type_id
      t.string :institute_name
      t.string :course
      t.integer :year
      t.integer :total_marks

      t.timestamps
    end
  end
end
