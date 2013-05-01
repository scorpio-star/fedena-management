class RemoveAdmissionAndContact < ActiveRecord::Migration
  def change
    remove_column :students, :admission_id, :contact_detail_id
  end
end
