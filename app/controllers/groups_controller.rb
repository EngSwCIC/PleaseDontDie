class GroupsController < ApplicationController
  before_action :load_group, only: [:show, :edit, :update, :destroy, :add_user]

  def index
    @groups = Group.all
  end

  def show
  end

  def new
    @group = Group.new
  end

  def edit
  end

  def create
    @group = Group.new(group_params)

    respond_to do |format|
      if @group.save
        if current_user
          @group.users << current_user
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
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def add_user
    @user = User.where(email: params[:email]).first
    if @user
      @group.users << @user
      respond_to do |format|
        format.html { redirect_to @group, notice: 'User successfully added.' }
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
    def load_group
      @group = Group.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def group_params
      params.require(:group).permit(:name)
    end
end
