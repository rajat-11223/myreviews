class ApplicationController < ActionController::Base
include ApplicationHelper

before_action :configure_permitted_parameters, if: :devise_controller?
#before_action :after_sign_in_path_for
protect_from_forgery

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image,:gender,:dob,:phone])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image,:gender,:dob,:phone])
  end

  def after_sign_in_path_for(resource)
  user_profile_path(current_user) #your path
end


end
