class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate( params[:name], params[:password])

    if user
      session[:user_id] = user.id
      redirect_to root_url, :notice => "Logged In!"
    else
      flash.now.alert = "Invalid name or password"
      render "new"
    end
  end

  def delete
    session[:user_id] = nil
    redirect_to root_url, :notice => "Logged In!"
  end
end
