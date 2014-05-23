class Absence < ActiveRecord::Base
  attr_accessible :date_filed, :department_id, :employee_id, :end_date, :leave_type_id, :reasons, :start_date, :status, :total_hours

  belongs_to :leave_type
  belongs_to :employee
  belongs_to :department

  before_create :set_status
  after_create :deduct_leave_credit

  def deduct_leave_credit
    leave_credit = self.employee.leave_credits.where(:leave_type_id => self.leave_type_id).first
    leave_credit.update_attribute(:count, leave_credit.count -= self.employee.translate_hours(self.total_hours) )
  end

  def set_status
    self.status = "pending"
  end
end
