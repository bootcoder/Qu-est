class StudentResponsesController < ApplicationController
	
	def create
		render :nothing => true
		@responses = params[:responses].map do |question_id, choice_id|
			[question_id, choice_id]
		end

		@responses.each do |response|
			@new_response = StudentResponse.new(question_id: response[0], choice_id: response[1], student_id: params[:student])
			@new_response.save
		end
	end

end