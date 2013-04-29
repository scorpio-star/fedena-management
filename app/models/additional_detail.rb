class AdditionalDetail < ActiveRecord::Base
  attr_accessible :passport
  belongs_to :student
end
