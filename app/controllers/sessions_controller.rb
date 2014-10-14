class SessionsController < ApplicationController

  def new
  end

  def create
    student = Student.authenticate(params[:email], params[:password])
    teacher = Teacher.authenticate(params[:email], params[:password])
    if student
      session[:id] = student.id
      session[:type] = "student"
      flash[:notice] = "Login as a student was successful"
    elsif teacher
      session[:id] = teacher.id
      session[:type] = "teacher"
      flash[:notice] = "Login as a teacher was successful"
    else
      flash[:notice] = "Login was unsuccessful"
    end
      redirect_to root_path
  end

  def destroy
    flash[:notice] = "You have been logged out."
    session[:id] = nil
    session[:type] = nil
    redirect_to root_path
  end
end
