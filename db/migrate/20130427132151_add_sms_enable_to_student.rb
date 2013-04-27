class AddSmsEnableToStudent < ActiveRecord::Migration
  def change
    add_column :students, :is_sms_enabled, :boolean
  end
end
