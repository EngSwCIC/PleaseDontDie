require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.
#
# Also compared to earlier versions of this generator, there are no longer any
# expectations of assigns and templates rendered. These features have been
# removed from Rails core in Rails 5, but can be added back in via the
# `rails-controller-testing` gem.

RSpec.describe GroupsController, type: :controller do

  # This should return the minimal set of attributes required to create a valid
  # Group. As you add validations to Group, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    { name: 'Valid Name' }
  }

  let(:invalid_attributes) {
    { name: 1 }
  }

  let(:invalid_user) {
    { email: 'unvalid' }
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # GroupsController. Be sure to keep this updated too.
  let(:valid_session) { { } }

  before :each do
    @profile_user = FactoryBot.create(:profile_user)
    allow(controller).to receive(:current_user) { @profile_user.user }
  end

  describe "GET #index" do
    it "returns a successful response" do
      group = Group.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #show" do
    it "returns a successful response" do
      group = Group.create! valid_attributes
      get :show, params: {id: group.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #new" do
    it "returns a successful response" do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "GET #edit" do
    it "returns a successful response" do
      group = Group.create! valid_attributes
      get :edit, params: {id: group.to_param}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Group" do
        expect {
          post :create, params: {group: valid_attributes}, session: valid_session
        }.to change(Group, :count).by(1)
      end

      it "redirects to the created group" do
        post :create, params: {group: valid_attributes}, session: valid_session
        expect(response).to redirect_to(Group.last)
      end
    end

    context "with invalid params" do
      it "returns a successful response (i.e. to display the 'new' template)" do
        post :create, params: {group: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        @new_name = 'Another name'
        { name: @new_name }
      }

      it "updates the requested group" do
        group = Group.create! valid_attributes
        put :update, params: {id: group.to_param, group: new_attributes}, session: valid_session
        group.reload
        expect(group.name).to eq(@new_name)
      end

      it "redirects to the group" do
        group = Group.create! valid_attributes
        put :update, params: {id: group.to_param, group: valid_attributes}, session: valid_session
        expect(response).to redirect_to(group)
      end
    end

    context "with invalid params" do
      it "returns a successful response (i.e. to display the 'edit' template)" do
        group = Group.create! valid_attributes
        put :update, params: {id: group.to_param, group: invalid_attributes}, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE #destroy" do
    it "destroys the requested group" do
      group = Group.create! valid_attributes
      expect {
        delete :destroy, params: {id: group.to_param}, session: valid_session
      }.to change(Group, :count).by(-1)
    end

    it "redirects to the groups list" do
      group = Group.create! valid_attributes
      delete :destroy, params: {id: group.to_param}, session: valid_session
      expect(response).to redirect_to(groups_url)
    end
  end

  describe "POST #add_user" do
    before :each do
      @group = FactoryBot.create(:group)
      @dummy_email = 'one@email.com'
      @user = FactoryBot.create(:user, email: @dummy_email)
      @dummy = FactoryBot.create(:profile_user, user: @user)
    end

    it "calls User model to find the correct user" do
      expect(User).to receive(:where).with({email: @dummy_email}).and_return([@user])
      post :add_user, params: {id: @group.id, email: @dummy_email, add_user: {email: @dummy_email}}, session: valid_session
    end

    it "returns a notice if the user was not found" do
      post :add_user, params: {id: @group.id, email: "notuser@email.com", add_user: {email: "notuser@email.com"} }, session: valid_session
      expect(flash[:notice]).to eq('Usuário não encontrado.')
    end

    it "returns a notice if the user was not found if filled with invalid text" do
      post :add_user, params: {id: @group.id, email: 4546, add_user: {email: 4546} }, session: valid_session
      expect(flash[:notice]).to eq('Usuário não encontrado.')
    end

    it "returns a notice if the user was not found if filled with invalid text" do
      post :add_user, params: {id: @group.id, email: "",  add_user: {email: ""} }, session: valid_session
      expect(flash[:notice]).to eq('Usuário não encontrado.')
    end

    it "adds a user to group" do
      post :add_user, params: {id: @group.id, email: @user.email, add_user: {email: @user.email} }, session: valid_session
      expect(@group.profile_users).to include(@dummy)
    end

    it "returns a notice if the user was successfully added" do
      post :add_user, params: {id: @group.id, email: @user.email, add_user: {email: @user.email}} , session: valid_session
      expect(flash[:notice]).to eq('Usuário adicionado com sucesso.')
    end
  end

end
