class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

   def after_sign_in_path_for(resource)
    sign_in_url = new_user_session_url
     URI.parse('/dashboard/articles').path
    # if request.referer == sign_in_url
    #   URI.parse('/dashboard/articles').path
    # else
    #   stored_location_for(resource) || request.referer
    # end
  end
end