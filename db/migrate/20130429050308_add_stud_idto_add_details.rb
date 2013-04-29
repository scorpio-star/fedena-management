class AddStudIdtoAddDetails < ActiveRecord::Migration
  def change
    add_column :additional_details, :student_id, :integer
  end
end
