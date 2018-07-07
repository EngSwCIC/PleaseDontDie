require 'rails_helper'

RSpec.describe ProfileUser, type: :model do
  describe "#save" do
    it "only saves profile user with a name" do
      expect { ProfileUser.new.save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
    it "only saves profile user with name with length bigger than 2" do
      expect { ProfileUser.new(first_name: "n", last_name: "Nope").save! }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe "#name" do
    it "returns the full name of the profile" do
      profile_user = FactoryBot.create(:profile_user)
      expect(profile_user.name).to eq("#{profile_user.first_name} #{profile_user.last_name}")
    end
  end
end
