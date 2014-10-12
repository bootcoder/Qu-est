class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  private
  def logged_in?
    # @current_user ||= Teacher.find(session[:id]) if session[:type] == "teacher" || Student.find(session[:id]) if session[:type] == "student"
    if session[:type] == "teacher"
      @current_user ||= Teacher.find(session[:id])
    elsif session[:type] == "student"
      @current_user ||= Student.find(session[:id])
    else
      @current_user = nil
    end
  end
end
