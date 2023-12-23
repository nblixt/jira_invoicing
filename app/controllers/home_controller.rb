class HomeController < ApplicationController
  skip_before_action :authorize_user, only: :inactive

  def index; end

  def inactive; end
end
