require 'spec_helper'

describe LeaveType do
  context "validations" do
    context "presence" do
      it { should validate_presence_of(:name) }
    end

    context "uniquesness" do
      it { should validate_uniqueness_of(:name)}
    end
  end

  context "relationships" do

  end
end
