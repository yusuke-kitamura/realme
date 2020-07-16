class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?

	protected

	def after_sign_in_path_for(resource)
    	case resource
    	when Salon
      		owner_salons_path
    	when User
      		user_salons_path
    	end
  	end

  	def after_sign_out_path_for(resource)
    	case resource
    	when :salon
      		root_path
    	when :user
      		root_path
    	end
  	end

	def configure_permitted_parameters
		if resource_class == User
   			devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:age,:email,:job])
   			devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   			devise_parameter_sanitizer.permit(:account_update,keys:[:name,:age,:email,:job])
		elsif resource_class == Salon  
			devise_parameter_sanitizer.permit(:sign_up, keys: [:salon_name,:email,:person_name,:number,:price,:purpose])
   			devise_parameter_sanitizer.permit(:sign_in,keys:[:email])
   			devise_parameter_sanitizer.permit(:account_update,keys:[:salon_name,:email,:person_name,:number,:price,:purpose])
    else
    		super
    end
  end
end
