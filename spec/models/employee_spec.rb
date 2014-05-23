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
      employee.name.should eq("Athena Kassandra dela Cruz")
    end
  end

  context "sick_leaves" do
    before do
      #create()
    end

    it "should return the user amount of sick leaves" do

    end
  end
end


