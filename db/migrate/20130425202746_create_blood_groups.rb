class CreateBloodGroups < ActiveRecord::Migration
  def change
    create_table :blood_groups do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
