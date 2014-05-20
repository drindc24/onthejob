class EmployeesController < ApplicationController
  before_filter :authenticate_employee!

  def index
    @company = current_employee.company
    @employees = @company.employees
  end

  def show
    if params[:id]
    else
      @employee = current_employee
    end
  end
end
