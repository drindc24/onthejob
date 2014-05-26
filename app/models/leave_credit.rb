class LeaveCredit < ActiveRecord::Base
  attr_accessible :count, :employee_id, :leave_type_id

  validates :count, :presence => true
  validates :employee_id, :presence => true
  validates :leave_type_id, :presence => true
  validates_uniqueness_of :employee_id, :scope => :leave_type_id

  belongs_to :employee
  belongs_to :leave_type
end
