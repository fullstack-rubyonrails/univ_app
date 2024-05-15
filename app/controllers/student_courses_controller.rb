class StudentCoursesController < ApplicationController
  
  def create
    course_to_add = Course.find(params[:course_id])
    unless current_user.courses.include?(course_to_add)
      StudentCourse.create(course: course_to_add, student: current_user)
      flash[:notice] = "You have successfully added to course: #{course_to_add.short_name}: #{course_to_add.name}"
      redirect_to current_user
    else
      flash[:notice] = "Something is wrong with Enrollment"
      redirect_to root_path
    end
  end

end