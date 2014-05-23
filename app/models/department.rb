class Department < ActiveRecord::Base
  attr_accessible :department_head_id, :name

  has_many :employees
  has_many :absences, :dependent => :destroy

  belongs_to :company
end
