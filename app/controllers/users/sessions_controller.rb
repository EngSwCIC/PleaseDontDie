class Users::SessionsController < Devise::SessionsController
  protected
    def after_sign_in_path_for(resource)
      profile_user_index_path
    end
end