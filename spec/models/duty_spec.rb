require 'rails_helper'

RSpec.describe Duty, type: :model do

  before :each do
    @pet = FactoryBot.create(:pet)
  end

  describe "#save" do
    it "only saves duty with a name" do
      expect { Duty.new(pet: @pet).save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "only saves group with name with length bigger than 2" do
      expect { Duty.new(name: "n", pet: @pet).save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "saves group with a valid name" do
      expect { Duty.new(name: "ValidName", pet: @pet).save! }.to change(Duty, :count).by(1)
    end
    it "only saves duty with a pet" do
      expect { Duty.new(name: "ValidName").save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe "#dup_duty" do
    it "creates a new duty when the previous duty has frequency and is set as done" do
      Duty.new(name: "SomeName", frequency: 2, done: false, pet: @pet).save!
      expect { Duty.update(done: true) }.to change(Duty, :count).by(1)
    end
	
    it "does not create a new duty when the previous duty does not a have frequency" do
      Duty.new(name: "SomeName", done: false, pet: @pet).save!
      old_count = Duty.count
      Duty.update(done: true) 
      expect(Duty.count).to eq(old_count)
    end
    it "does not create a new duty when the previous duty is update to not done" do
      Duty.new(name: "SomeName", frequency: 1, done: true, pet: @pet).save!
      old_count = Duty.count
      Duty.update(done: false) 
      expect(Duty.count).to eq(old_count)
    end
  end

end
