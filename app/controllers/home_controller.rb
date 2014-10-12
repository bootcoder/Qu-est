class HomeController < ApplicationController
  def index
    logged_in?
  end
end