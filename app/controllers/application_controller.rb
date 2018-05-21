class ApplicationController < ActionController::Base
	layout :layout_by_resource

	private

	def layout_by_resource
	  if devise_controller? && resource_name == :user
	    "user_devise"
	  else
	    "application"
	  end
	end

	def after_sign_in_path_for(user)
		user_path(user)
	end

	def after_sign_up_path_for(user)
		user_path(user)
	end
end
