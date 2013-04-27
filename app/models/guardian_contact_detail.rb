class GuardianContactDetail < ActiveRecord::Base
  attr_accessible :guardian_id, :email, :address_line_1, :address_line_2, :city, :state, :city_id,
  :phone_1, :phone_2, :mobile
  belongs_to :guardian
end
