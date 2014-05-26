class Department < ActiveRecord::Base
  attr_accessible :department_head_id, :name

  validates :name, :presence => true
  validates :name, :uniqueness => true

  has_many :employees
  has_many :absences, :dependent => :destroy

  belongs_to :company
end
