class StudentsController < ApplicationController
  def index
    @students = Student.all
  end
  def show
    @student = Student.find(params[:id])
  end
  def new
    @student = Student.new
  end
  def create
    @student = Student.new(student_params)
    if @student.save
      flash[:notice] = "You have successfully Signed Up"
      redirect_to students_path
    else
      render 'new', status: :unprocessable_entity
    end
  end
  def edit
    @student = Student.find(params[:id])
  end
  def update
    @student = Student.find(params[:id])
    if @student.update(student_params)
      flash[:notice] = "Your profile updated!"
      redirect_to @student
      # redirect_to student_path(@student)
    else
      render 'edit'
    end
  end

  private 
  def student_params
    params.require(:student).permit(:name,:email)
  end

end