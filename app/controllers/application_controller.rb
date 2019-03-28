class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    if resource_class == Company
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    elsif resource_class == User
      super
    end
  end
end
