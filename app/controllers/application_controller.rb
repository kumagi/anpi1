class ApplicationController < ActionController::Base
  helper_method :current_admin, :admin_signed_in?, :admin_signed_out?
  helper_method :current_member, :member_signed_in?, :memberf_signed_out?

  protect_from_forgery
  before_filter :admin_signed_in?

  def current_admin
    if session[:admin_id]
      @current_admin ||= Admin.find(session[:admin_id])
    end
    @current_admin
  end
  def admin_signed_in?
    !!current_admin
  end
  def admin_signed_out?
    !current_admin
  end

  def current_member
    if session[:member_info_id]
      @current_admin ||= MemberInfo.find(session[:member_info_id])
    end
    @current_admin
  end
  def member_signed_in?
    !!current_member
  end
  def member_signed_out?
    !current_member
  end

  helper_method :current_admin
end
