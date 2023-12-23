class UsersController < ApplicationController
  def index
    @users = User.order(:username)
  end

  def show
    @user = User.find(params[:id])
  end
end
