class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception  

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit!}
  end

  # Overwriting the sign_out redirect path method
  def after_sign_in_path_for(resource)
    if contractor_signed_in?
      contractor_url(resource)
    else poster_signed_in?
      poster_url(resource)
    end
  end

end
