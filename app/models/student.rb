class Student < ActiveRecord::Base
  attr_accessible :admission_id, :first_name, :middle_name, :last_name, :course_batch_id, :date_of_birth, :gender, :birth_place,
  :blood_group_id, :nationality_id, :category_id, :religion

  belongs_to :admission
  has_one :contact_detail
  has_one :photo
  has_many :guardians
  belongs_to :nationality

  has_one :course_batch, :class_name => "Batch"
  has_one :blood_group

  accepts_nested_attributes_for :photo
  accepts_nested_attributes_for :contact_detail
  accepts_nested_attributes_for :admission
  accepts_nested_attributes_for :guardians
end
