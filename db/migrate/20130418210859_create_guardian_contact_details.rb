class CreateGuardianContactDetails < ActiveRecord::Migration
  def change
    create_table :guardian_contact_details do |t|
      t.integer :guardian_id
      t.string :email
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.integer :city_id
      t.integer :phone_1
      t.integer :phone_2
      t.integer :mobile

      t.timestamps
    end
  end
end
