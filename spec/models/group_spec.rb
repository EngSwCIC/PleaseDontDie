require 'rails_helper'

RSpec.describe Group, type: :model do

  describe "#save" do
    it "only saves group with a name" do
      expect { Group.new.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "only saves group with name with length bigger than 2" do
      expect { Group.new(name: "n").save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "saves group with a valid name" do
      expect { Group.new(name: "ValidName").save! }.to change(Group, :count).by(1)
    end
    it "does not save a group with a repeated name" do
      Group.new(name: "SomeName").save!
      expect { Group.new(name: "SomeName").save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end
end
