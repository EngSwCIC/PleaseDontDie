require 'rails_helper'

RSpec.describe ProfileUserController, type: :controller do

  let(:valid_attributes) {
    { first_name: 'Valid', last_name: 'Name' }
  }

  let(:invalid_attributes) {
    { first_name: 1, last_name: 2 }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GroupsController. Be sure to keep this updated too.
  let(:valid_session) { { } }

  describe "GET #index" do
    it "returns a successful response" do
      profile_user = FactoryBot.create(:profile_user, valid_attributes)
      allow(controller).to receive(:current_user) { profile_user.user }
      get :index, params: {id: profile_user.id}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a successful response" do
      profile_user = FactoryBot.create(:profile_user, valid_attributes)
      allow(controller).to receive(:current_user) { profile_user.user }
      get :show, params: {id: profile_user.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a successful response" do
      profile_user = FactoryBot.create(:profile_user, valid_attributes)
      allow(controller).to receive(:current_user) { profile_user.user }
      get :edit, params: {id: profile_user.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        @new_first = 'Another'
        @new_last = 'Name'
        { first_name: @new_first, last_name: @new_last }
      }

      it "updates the requested profile" do
        profile_user = FactoryBot.create(:profile_user, valid_attributes)
        allow(controller).to receive(:current_user) { profile_user.user }
        put :update, params: {id: profile_user.to_param, profile_user: new_attributes}, session: valid_session
        profile_user.reload
        expect(profile_user.last_name).to eq(@new_last)
      end

    end

    context "with invalid params" do
      it "returns a successful response (i.e. to display the 'edit' template)" do
        profile_user = FactoryBot.create(:profile_user, valid_attributes)
        allow(controller).to receive(:current_user) { profile_user.user }
        put :update, params: {id: profile_user.to_param, profile_user: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

end
