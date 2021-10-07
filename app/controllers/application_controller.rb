class ApplicationController < ActionController::Base

  def admin_only
    unless current_user.admin?
      redirect_to root_path, alert: 'Access Denied.'
    end
  end
end
