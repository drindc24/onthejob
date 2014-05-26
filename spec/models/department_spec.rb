require 'spec_helper'

describe Department do
  context "validations" do
    context "presence" do
      it { should validate_presence_of(:name) }
    end

    context "uniquesness" do
      it { should validate_uniqueness_of(:name)}
    end
  end

  context "relationships" do
    it { should belong_to(:company) }
    it { should have_many(:employees) }
    it { should have_many(:absences) }
  end
end
