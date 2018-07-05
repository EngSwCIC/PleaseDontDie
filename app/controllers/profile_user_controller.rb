class ProfileUserController < ApplicationController
  layout "profile_user"
  before_action :set_user, only: [:index, :show, :edit, :update, :pets, :duties, :feed, :friends]

  def index
    @user = ProfileUser.find_or_create_by(user_id: current_user.id)
  end

  def show
  end
  
  def edit
  end

  def update
    if @user.update(params_user)
      redirect_to profile_user_path(current_user.id) , notice: "Dados atualizados com sucesso."
    else
      render :edit
    end
  end

  def pets
    @pets = @user.pets
  end

  def duties
    params["field_order"] ||= 'until'
    session[:order] = session[:order] ? toggle_order(session[:order]) : 'DESC' 
    @duties = @user.duties.order("#{params["field_order"]} #{session[:order]}")
  end

  def feed
    @duties = @user.duties.order(updated_at: :desc)
    @groups = @user.groups.order(updated_at: :desc)
    @pets = @user.pets.order(updated_at: :desc)
    @groupsUsers = Group.joins("INNER JOIN groups_profile_users ON groups_profile_users.group_id = groups.id
                                INNER JOIN profile_users ON profile_users.id = groups_profile_users.profile_user_id")
                        .where(groups: { id: @groups })
                        .select("groups_profile_users.*, groups.name, profile_users.first_name")
                        .order(created_at: :desc)
  end
  
  def friends
    @friends = @user.profile_users.where.not(id: current_user.id).distinct
  end

  private

  def set_user
  	@user = ProfileUser.find(params[:id])
  end

  def params_user
  	params.require(:profile_user).permit(:first_name, :last_name, :birthday, :address, :phone, :picture)
  end

  def toggle_order(order)
    order == 'DESC' ? 'ASC' : 'DESC'
  end

end
