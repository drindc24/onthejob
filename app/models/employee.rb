class Employee < ActiveRecord::Base
  attr_accessible :address, :civil_status, :date_of_birth, :emergency_contact, :first_name, :gender, :last_name, :level, :middle_name, :mobile_number, :pagibig, :philhealth, :telephone_number, :tin
end
