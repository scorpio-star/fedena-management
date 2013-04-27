class Guardian < ActiveRecord::Base
  attr_accessible  :guardian_contact_detail_id
  
  belongs_to :student_id
end
