class UserController < ApplicationController
  def show
    @user = User.find(params[:first_name])
  end
end
