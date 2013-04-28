class AdditionalDetail < ActiveRecord::Base
  attr_accessible :passport, :student_id
  belongs_to :student
end
