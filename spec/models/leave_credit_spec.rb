require 'spec_helper'

describe LeaveCredit do
  context "validations" do
    context "presence" do
      it { should validate_presence_of(:count) }
      it { should validate_presence_of(:employee_id) }
      it { should validate_presence_of(:leave_type_id) }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:employee_id).scoped_to(:leave_type_id) }
    end
  end
end
