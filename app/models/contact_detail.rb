class ContactDetail < ActiveRecord::Base
  attr_accessible  :address_line_1, :address_line_2, :city, :state, :pincode, :country_id, 
  :phone, :mobile, :email
  belongs_to :student
end
