class Company < ActiveRecord::Base
  attr_accessible :business_address, :business_phone, :date_founded, :fax_number, :full_name, :slug, :status

  has_many :employees, :dependent => :destroy

  def is_employee?(employee)
    self.employees.include?(employee)
  end
end
