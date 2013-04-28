class Education < ActiveRecord::Base
  attr_accessible :institute_name, :course, :year, :total_marks, :education_type_id
  belongs_to :education_type
  belongs_to :student
end
