class Guardian < ActiveRecord::Base
  attr_accessible :guardian_contact_details_attributes, :guardian_contact_detail_id, :first_name, :middle_name, 
  :last_name, :date_of_birth, :education, :occupation, :income
  
  belongs_to :student_id
  has_one :guardian_contact_detail
  accepts_nested_attributes_for :guardian_contact_detail
end
