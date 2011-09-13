class ApplicationController < ActionController::Base
  include MultiParameterAttributes

  protect_from_forgery

  private
  def not_authenticated
    redirect_to login_url, :alert => "First login to access this page"
  end
end
