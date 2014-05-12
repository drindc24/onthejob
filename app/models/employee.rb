class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :address, :civil_status, :date_of_birth, :emergency_contact, :first_name, :gender, :last_name, :level, :middle_name, :mobile_number, :pagibig, :philhealth, :telephone_number, :tin
end
