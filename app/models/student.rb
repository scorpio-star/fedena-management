class Student < ActiveRecord::Base
  attr_accessible :admission_id, :first_name, :middle_name, :last_name, :course_batch_id, :date_of_birth, :gender, :mother_tongue, :birth_place, :blood_group_id, :nationality_id, :category_id, :religion, :is_sms_enabled, :photo, :contact_detail_attributes, :guardians_attributes, :admission_attributes,
    :education_attributes, :subjects_attributes, :emergency_contact_id, :passport

  belongs_to :nationality
  has_attached_file :photo
  has_many :guardians
  has_one :admission
  has_one :contact_detail
  belongs_to :course_batch, :class_name => 'Batch'
  belongs_to :blood_group
  belongs_to :category
  belongs_to :emergency_contact, :class_name => 'Guardian'
  has_one :education
  has_many :subjects

  accepts_nested_attributes_for :contact_detail, :admission, :guardians, :education, :subjects
end
