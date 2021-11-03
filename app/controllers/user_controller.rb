class UserController < ApplicationController
  def show
    puts @user = User.find(params[:first_name])
  end
end
