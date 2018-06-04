class ProfileUserController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @user = ProfileUser.find_or_create_by(user_id: current_user.id)
  end
  
  def edit
  end

  def update
    if @user.update(params_user)
      redirect_to profile_user_index_path(current_user.id) , notice: "Dados atualizados com sucesso."
    else
      render :edit
    end
  end

  private

  def set_user
  	@user = ProfileUser.find(current_user.id)
  end

  def params_user
  	params.require(:profile_user).permit(:first_name, :last_name, :birthday, :address, :phone)
  end

end
