class Users::RegistrationsController < Devise::RegistrationsController

	before_action :configure_permitted_parameters

	def new
		build_resource({})
		resource.build_profile_user
		respond_with self.resource		
	end

	protected
	def after_sign_up_path_for(user)
		profile_user_path(user.profile_user)
	end
	def after_update_path_for(user)
		profile_user_path(user.profile_user)
	end


	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(
			:sign_up,
			keys:[
			:email, :password, :password_confirmation,
			:profile_user_attributes => [:first_name, :last_name, :birthday, :address,:phone]]
			)
	end

end
