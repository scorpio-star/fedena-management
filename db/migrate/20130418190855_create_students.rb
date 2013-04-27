class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.integer :admission_id
      t.integer :contact_detail_id
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.integer :course_batch_id
      t.date :date_of_birth 
      t.string :gender
      t.string :birth_place
      t.integer :blood_group_id
      t.integer :nationality_id
      t.integer :category_id
      t.string :religion
      t.string :mother_tongue

      t.timestamps
    end
  end
end
