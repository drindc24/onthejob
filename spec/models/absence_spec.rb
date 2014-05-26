require 'spec_helper'

describe Absence do
  context "validations" do
    context "presence" do
      it { should validate_presence_of(:date_filed) }
      it { should validate_presence_of(:employee_id) }
      it { should validate_presence_of(:start_date) }
      it { should validate_presence_of(:end_date) }
      it { should validate_presence_of(:leave_type_id) }
      it { should validate_presence_of(:reasons) }
      it { should validate_presence_of(:status) }
      it { should validate_presence_of(:total_hours) }
    end
  end

  context "relationships" do
    it { should belong_to(:leave_type) }
    it { should belong_to(:employee) }
    it { should belong_to(:department) }
  end
end
