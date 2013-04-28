class Subject < ActiveRecord::Base
  attr_accessible :subject, :marks
  belongs_to :student
end
