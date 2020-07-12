class ApplicationController < ActionController::Base

	protected

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
