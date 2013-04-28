class CreateEducationTypes < ActiveRecord::Migration
  def change
    create_table :education_types do |t|
      t.string :name
      t.string :code
      
      t.timestamps
    end
  end
end
