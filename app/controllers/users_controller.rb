class UsersController < ApplicationController
  before_filter :require_login, :only => [ :create, :new ]

  def new
    @user = User.new
  end

  def create
    @user = User.new( params[:user] )
    if @user.save
      redirect_to root_url, :notice => "Signed Up!"
    else
      render :new
    end
  end
end
