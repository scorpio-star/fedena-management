class Admission < ActiveRecord::Base
  attr_accessible :number, :admission_date

 # validates_presence_of :number, :admission_date
 # validates_uniqueness_of :number, :admission_date

  belongs_to :student
end
