class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.authenticate(params[:email], params[:password])
    teacher = Teacher.authenticate(params[:email], params[:password])
    if student
      session[:id] = student.id
      session[:type] = "student"
      flash[:notice] = "Login as a student was sucessful"
    elsif teacher
      session[:id] = teacher.id
      session[:type] = "teacher"
      flash[:notice] = "Login as a teacher was sucessful"
    else
      flash[:notice] = "Login was unsucessful"
    end
      redirect_to root_path
  end

  def destroy
    session[:id] = nil
    session[:type] = nil
    redirect_to root_path
  end
end
