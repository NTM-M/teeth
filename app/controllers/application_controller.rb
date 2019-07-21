class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?
	
	def after_sign_in_path_for(resource)
	user_posts_path # ログイン後
	end

  	def after_sign_out_path_for(resource)
  	user_posts_path # ログアウト後
    end

    protected

    def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
