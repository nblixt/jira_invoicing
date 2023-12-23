class ApplicationController < ActionController::Base
  before_action :authorize_user
  helper_method :current_user

  def authorize_user
    redirect_to inactive_path unless current_user
  end

  def current_user
    @current_user ||= User.find_by(username: ENV.fetch("STUB_USERNAME", nil)) # placeholder method until actually adding authentication mechanisms
  end
end
