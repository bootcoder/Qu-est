class StudentResponsesController < ApplicationController
	
	def create
		p params
		render :nothing => true
		@response = StudentResponse.create(student_id: params[:student], choice_id: params[:choice])
		@response.save
	end

end