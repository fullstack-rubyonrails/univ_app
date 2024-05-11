class LoginsController < ApplicationController
  skip_before_action :require_user, only: [:new, :create]
  
  def new
  
  end
  def create
    student = Student.find_by(email:params[:email].downcase)
    if student && student.authenticate(params[:password])
      # Storing client login in client cookies
      session[:student_id] = student.id
      # End Storing client login in client cookies
      flash[:notice] = "Logged In successfully"
      redirect_to student
    else
      flash.now[:notice] = "Something wrong with your credentials"
      render 'new'
    end
  end
  def destroy
    session[:student_id] = nil
    flash[:notice] = "You have successfully Logget Out"
    redirect_to root_path
  end

end