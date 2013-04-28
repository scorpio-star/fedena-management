class Student < ActiveRecord::Base
  attr_accessible :admission_id, :first_name, :middle_name, :last_name, :course_batch_id, :date_of_birth, :gender, :mother_tongue, :birth_place, :blood_group_id, :nationality_id, :category_id, :religion, :is_sms_enabled, :photo, :contact_detail_attributes, :guardians_attributes, :admission_attributes,
    :education_attributes, :subjects_attributes, :emergency_contact_id, :additional_detail_attributes

  belongs_to :nationality
  has_attached_file :photo
  has_many :guardians
  has_one :admission
  has_one :contact_detail
  has_one :course_batch, :class_name => "Batch"
  has_one :blood_group
  has_one :education
  has_many :subjects
  has_one :additional_detail

  accepts_nested_attributes_for :contact_detail, :admission, :guardians, :education, :subjects, :additional_detail
end
