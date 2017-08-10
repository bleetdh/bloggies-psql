class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # allows us to add more property to users instead of just email and pw
  before_action :configure_permitted_parameters, if: :devise_controller?
  # will request for log in first before anything!
  # before_action :authenticate_user!

  protected

  # allows us to add more property to users instead of just email and pw
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :birthday])
  end

end
