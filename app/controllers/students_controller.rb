class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update]
  def index
    @students = Student.all
  end
  def show

  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "You have successfully Signed Up"
      redirect_to @student
    else
      render 'new'
    end
  end
  def edit
    
  end
  def update
    if @student.update(student_params)
      flash[:notice] = "Your profile updated!"
      redirect_to @student
      # redirect_to student_path(@student)
    else
      render 'edit'
    end
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name,:email)
  end

end