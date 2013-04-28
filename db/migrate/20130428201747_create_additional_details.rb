class CreateAdditionalDetails < ActiveRecord::Migration
  def change
    create_table :additional_details do |t|
      t.string :passport

      t.timestamps
    end
  end
end
