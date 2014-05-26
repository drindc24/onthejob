class Employee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
                  :address, :civil_status, :date_of_birth,
                  :emergency_contact, :first_name, :gender,
                  :last_name,
                  :level, :middle_name,
                  :mobile_number, :pagibig, :philhealth, :telephone_number, :tin

  #validations

  validates :email, :presence => true, :uniqueness => true
  validates :password, :presence => true
  validates :first_name, :presence => true
  validates :middle_name, :presence => true
  validates :last_name, :presence => true
  validates :address, :presence => true
  validates :civil_status, :presence => true
  validates :date_of_birth, :presence => true
  validates_uniqueness_of :first_name, :scope => [:middle_name, :last_name]

  has_many :absences, :dependent => :destroy
  has_many :leave_credits, :dependent => :destroy

  belongs_to :company
  belongs_to :department

  def name
    self.first_name + " " + self.last_name
  end

  def sick_leaves
    leave = self.leave_credits.joins(:leave_type).where(:leave_types => {:name => "Sick Leave"}).first
    leave.nil? ? 0 : leave.count
  end

  def vacation_leaves
    leave = self.leave_credits.find_by_leave_type_id(2)
    leave.nil? ? 0 : leave.count
  end

  def file_absence(leave_type_id,date_filed,start_date,end_date,total_hours,reasons)
    leave_type = LeaveType.find(leave_type_id)
    return "You do not have enough #{leave_type.name} credits." unless self.leave_credits.map(&:leave_type_id).include?(leave_type_id) && self.has_enough_leave_credit_balance?(leave_type_id, total_hours)
    absence = self.absences.new(:department_id => self.department,
                         :leave_type_id => leave_type_id,
                         :date_filed => date_filed,
                         :start_date => start_date,
                         :end_date => end_date,
                         :total_hours => total_hours,
                         :reasons => reasons)

    absence.save! if absence.valid?
  end

  def has_enough_leave_credit_balance?(leave_type_id, desired_credit_count)
    credit = self.leave_credits.find_by_leave_type_id(leave_type_id)

    #return false unless credit

    credit.count < desired_credit_count || credit.nil? ? false : true
  end

  def translate_hours(total_hours)
    total_hours / 8
  end
end
