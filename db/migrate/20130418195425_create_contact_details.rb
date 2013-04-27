class CreateContactDetails < ActiveRecord::Migration
  def change
    create_table :contact_details do |t|
      t.integer :student_id
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :state
      t.string :pincode
      t.integer :country_id
      t.integer :phone
      t.integer :mobile
      t.string :email

      t.timestamps
    end
  end
end
