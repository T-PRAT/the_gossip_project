class UserController < ApplicationController
  def show
    puts @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(post_params)
    redirect_to user_path
  end

  def create
    @user = User.new(params.permit(:first_name, :last_name, :email, :password))
    if @user.save
      session[:user_id] = @user.id
      redirect_to gossip_index_path
    else
      flash[:warning] = "L'utilisateur n'a pas pu etre créé !"
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to gossip_index_path
  end

  private

  def post_params

  end
end
