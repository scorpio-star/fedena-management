class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :student_id
      t.string :subject
      t.decimal :marks
      
      t.timestamps
    end
  end
end
