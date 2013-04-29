class Student < ActiveRecord::Base
  attr_accessible :admission_id, :first_name, :middle_name, :last_name, :course_batch_id, :date_of_birth, :gender, :mother_tongue, :birth_place, :blood_group_id, :nationality_id, :category_id, :religion, :is_sms_enabled, :photo, :contact_detail_attributes, :guardians_attributes, :admission_attributes,
    :education_attributes, :subjects_attributes, :emergency_contact_id, :additional_detail_attributes

  belongs_to :nationality
  has_attached_file :photo
  has_many :guardians
  has_one :admission
  has_one :contact_detail
  belongs_to :course_batch, :class_name => :batch
  belongs_to :blood_group
  belongs_to :category
  belongs_to :emergency_contact, :class_name => :guardian
  has_one :education
  has_many :subjects
  has_one :additional_detail

  accepts_nested_attributes_for :contact_detail, :admission, :guardians, :education, :subjects, :additional_detail
end
