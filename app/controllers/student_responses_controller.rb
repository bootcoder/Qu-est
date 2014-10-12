class StudentResponsesController < ApplicationController
	
	def create
		# render :nothing => true
		@responses = params[:responses].map do |question_id, choice_id|
			[question_id, choice_id]
		end
		@quiz = Question.find(@responses.first[0]).quiz

		@responses.each do |response|
			@new_response = StudentResponse.new(question_id: response[0], choice_id: response[1], student_id: params[:student])
			@new_response.save
		end

		respond_to do |format|
            format.html { redirect_to "/quizzes/#{@quiz.id}/overview"}
            format.js { render :js => "window.location.replace('#{article_path(@article)}');"}
    end
		# redirect_to "/quizzes/#{@quiz.id}/overview"
	end

end