class HomeController < ApplicationController
  def index
    logged_in?
    if @current_user
      @courses = @current_user.courses
    end
  end
end