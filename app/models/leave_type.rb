class LeaveType < ActiveRecord::Base
  attr_accessible :description, :name

  validates :name, :presence => true
  validates :name, :uniqueness => true

  has_many :leave_credits, :dependent => :destroy
  has_many :absences, :dependent => :destroy
end
