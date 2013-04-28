class Guardian < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :relation, :date_of_birth, :education, :occupation, :income, :email, :address_line_1, :address_line_2, :city, :state, :country_id, :phone_1, :phone_2, :mobile
  
  belongs_to :student
end
