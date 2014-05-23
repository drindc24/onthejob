class LeaveType < ActiveRecord::Base
  attr_accessible :description, :name

  has_many :leave_credits, :dependent => :destroy
  has_many :absences, :dependent => :destroy
end
