class SessionsController < ApplicationController
  def new
  end

  def create
    user = login(params[:username], params[:password], params[:remember_me])
    if user
      redirect_back_or_to root_url, :notice => "Logged In!"
    else
      flash.now.alert = "Invalid name or password"
      render :new
    end
  end

  def delete
    logout
    redirect_to root_url, :notice => "Logged Out!"
  end
end
