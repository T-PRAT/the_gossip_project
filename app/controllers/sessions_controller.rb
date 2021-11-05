class SessionsController < ApplicationController
  def new

  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to gossip_index_path
    else
      flash.now[:wrong] = 'Mauvais email ou mot de passe !'
      render 'new'
    end
  end
  def destroy
    session.delete(:user_id)
    redirect_to gossip_index_path
  end
end
