require 'rails_helper'

RSpec.describe Specie, type: :model do

  describe "#save" do
    it "only saves group with a name" do
      expect { Specie.new.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "only saves group with name with length bigger than 2" do
      expect { Specie.new(name: "n").save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "saves group with a valid name" do
      expect { Specie.new(name: "ValidName").save! }.to change(Specie, :count).by(1)
    end
  end
end

