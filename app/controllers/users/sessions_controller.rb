class Users::SessionsController < Devise::SessionsController
  protected
    def after_sign_in_path_for(user)
      profile_user_path(user.profile_user)
    end
end
