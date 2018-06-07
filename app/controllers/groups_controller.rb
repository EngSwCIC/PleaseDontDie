class GroupsController < ApplicationController
  before_action :load_group, only: [:show, :edit, :update, :destroy, :add_user]

  def index
    @user = set_user_profile
    @groups = Group.all
  end

  def show
    @user = set_user_profile
  end

  def new
    @user = set_user_profile
    @group = Group.new
  end

  def edit
    @user = set_user_profile
  end

  def create
    @user = set_user_profile
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        if current_user
          @group.profile_users << current_user.profile_user
        end
        format.html { redirect_to @group, notice: 'Group was successfully created.' }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @user = set_user_profile
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to @group, notice: 'Group was successfully updated.' }
        format.json { render :show, status: :ok, location: @group }
      else
        format.html { render :edit }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @user = set_user_profile
    @group.profile_users.delete(@group.profile_users)
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_user
    @user = User.where(email: params[:email]).first
    if @user
      @profile_user = @user.profile_user
      @group.profile_users << @profile_user
      respond_to do |format|
        format.html { redirect_to @group, notice: 'ProfileUser successfully added.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { redirect_to @group, notice: 'No user found.' }
        format.json { head :no_content }
      end
    end
  end

  private
    def set_user_profile
      @user = ProfileUser.find(current_user.id)
    end
    def load_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end
end
