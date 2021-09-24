class ApplicationController < ActionController::Base
  include SessionsHelper
  include Pagy::Backend
  
  private

  def require_user_logged_in
    unless logged_in?
      redirect_to login_url
    end
  end
  
  def exist_user?
    unless User.find_by(id: params[:id])
      redirect_to root_url
    end
  end
  
  def guest_user
    current_user == User.find_by(email: "guest@exapmle.com")
  end
end
