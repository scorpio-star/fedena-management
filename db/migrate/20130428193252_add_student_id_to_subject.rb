class AddStudentIdToSubject < ActiveRecord::Migration
  def change
    remove_column :subjects, :education_id
    add_column :subjects, :student_id, :integer
  end
end
