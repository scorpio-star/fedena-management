class AddEmergencyContactIToStudent < ActiveRecord::Migration
  def change
    add_column :students, :emergency_contact_id, :integer
  end
end
