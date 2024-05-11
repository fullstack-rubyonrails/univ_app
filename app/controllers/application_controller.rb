class ApplicationController < ActionController::Base
  # Method written in application_controller.rb will not be accessible by VIEWS
  # Method written in application_helper.rb will be accessible by VIEWS & Controllers
  # To be accessible APPLICATION CONTROLLER code in all VIEWS add below line to be avialable in APPLICATION HELPER;
  before_action :require_user
  helper_method :current_user, :logged_in?

  def current_user
    # '||' this is memoization, this allowes not to hid database if @current_user object destnt exist in client cookeis
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    # !! boolean check
    !!current_user
  end
  
  def require_user
    if !logged_in?
      flash[:notice] = "You must be logged in to perfrom this action"
      redirect_to login_path
    end
  end
end
