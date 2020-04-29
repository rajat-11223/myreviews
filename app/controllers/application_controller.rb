class ApplicationController < ActionController::Base
include ApplicationHelper

before_action :configure_permitted_parameters, if: :devise_controller?
 #before_action :persist_last_visited_path, :authenticate_user!,  except: [:home]

#before_action :after_sign_in_path_for
protect_from_forgery

protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:name,:image,:gender,:dob,:phone])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:image,:gender,:dob,:phone])
  end


  def stored_location_for(resource_or_scope)
    session[:user_return_to] || super
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || user_profile_path
  end 

  #def after_sign_in_path_for(resource)


#redirect_to stored_location_for(:user) || root_path and return

#redirect_to request.referer

  #user_profile_path(current_user) || super
#end





end
