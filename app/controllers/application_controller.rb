class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  def current_user
    @current_user = Teacher.find(session[:id]) if session[:type] == "teacher"
    @current_user = Student.find(session[:id]) if session[:type] == "student"
  end
end
