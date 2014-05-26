require 'spec_helper'

describe Employee do
  let!(:employee) { create(:employee) }

  context "validations" do
    context "presence" do
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:password) }
      it { should validate_presence_of(:first_name) }
      it { should validate_presence_of(:middle_name) }
      it { should validate_presence_of(:last_name) }
      it { should validate_presence_of(:address) }
      it { should validate_presence_of(:civil_status) }
      it { should validate_presence_of(:date_of_birth) }
    end

    context "uniqueness" do
      it { should validate_uniqueness_of(:email) }
      it { should validate_uniqueness_of(:first_name).scoped_to(:middle_name, :last_name) }
    end
  end

  context "relationships" do
    it { should have_many(:absences) }
    it { should have_many(:leave_credits) }

    it {should belong_to(:company)}
    it {should belong_to(:department)}
  end

  context "name" do
    it "should return the employee first name and last name" do
      employee.name.should eq(employee.first_name + " " + employee.last_name)
    end
  end

  context "sick_leaves" do
    let!(:credit){ create(:leave_credit, :count => 10) }
    let!(:leave_type){ create(:leave_type, :name => "Sick Leave") }
    before do
      leave_type.leave_credits << credit
      employee.leave_credits << credit
    end

    it "should return the user amount of sick leaves" do
       employee.sick_leaves.should eql(10)
    end
  end
end


