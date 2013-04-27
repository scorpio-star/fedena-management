# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create!(:code => "SC/ST", :name => "Scheduled Caste/Scheduled Tribes")
Category.create!(:code => "OBC", :name => "Backward Caste")
Category.create!(:code => "GENERAL", :name => "Scheduled Caste/Scheduled Tribes")
Category.create!(:code => "NRI", :name => "Non Resident India")
Category.create!(:code => "OC", :name => "Other Caste")

BloodGroup.create!(:code => "A+", :name => "A postive")
BloodGroup.create!(:code => "A-", :name => "A Negative")
BloodGroup.create!(:code => "B+", :name => "B postive")
BloodGroup.create!(:code => "B-", :name => "B negative")
BloodGroup.create!(:code => "AB+", :name => "AB postive")
BloodGroup.create!(:code => "AB-", :name => "AB negative")

Batch.create!(:code => "2009-2010", :name => "2009-2010")
Batch.create!(:code => "2010-2011", :name => "2010-2011")
Batch.create!(:code => "2011-2012", :name => "2011-2012")
Batch.create!(:code => "2012-2013", :name => "2012-2013")

Nationality.create!(:code => "IND", :name => "India")
Nationality.create!(:code => "US", :name => "United States of America")



