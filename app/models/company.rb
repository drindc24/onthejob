class Company < ActiveRecord::Base
  attr_accessible :business_address, :business_phone, :date_founded, :fax_number, :full_name, :slug, :status

  validates :business_address, :presence => true
  validates :business_phone, :presence => true
  validates :date_founded, :presence => true
  validates :full_name, :presence => true

  validates :full_name, :uniqueness => true

  has_many :employees, :dependent => :destroy
  has_many :departments, :dependent => :destroy

  def is_employee?(employee)
    self.employees.include?(employee)
  end
end
