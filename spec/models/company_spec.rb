require 'spec_helper'

describe Company do
  context "validations" do
    context "presence" do
      it { should validate_presence_of(:business_address) }
      it { should validate_presence_of(:business_phone) }
      it { should validate_presence_of(:date_founded) }
      it { should validate_presence_of(:full_name)}
    end

    context "uniquesness" do
      it { should validate_uniqueness_of(:full_name)}
    end
  end

  context "is_employee?" do
    let!(:employee1){ create(:employee) }
    let!(:employee2){ create(:employee) }
    let!(:company){ create(:company) }

    before do
      company.employees << employee1
    end

    it "should return true if an employee is a member of the company" do
      company.is_employee?(employee1).should eq(true)
    end

    it "should return false if an employee is NOT a member of the company" do
      company.is_employee?(employee2).should eq(false)
    end
  end
end