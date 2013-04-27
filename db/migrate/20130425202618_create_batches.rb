class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.string :code
      t.string :name

      t.timestamps
    end
  end
end
