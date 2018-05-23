class ProfileUserController < ApplicationController
	def index
    @user = User.find(params[:id])
  end
  def edit
  	
  end

end
