class EmployeesController < ApplicationController
  before_filter :authenticate_employee!
  before_filter :check_if_logged_in, :only => :index

  def index
    @employees = Employee.all
  end

  def check_if_logged_in
    redirect_to new_employee_session_path unless current_employee
  end
end
