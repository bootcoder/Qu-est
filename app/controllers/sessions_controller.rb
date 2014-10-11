class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by_email(params[:email])
    teacher = Teacher.find_by_email(params[:email])
    if student && student.password == params[:password]
      session[:id] = user.id
      session[:type] = "student"
      flash[:notice] = "Login as a student was sucessful"
    elsif teacher && teacher.password == params[:password]
      session[:id] = user.id
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