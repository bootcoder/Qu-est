class Question < ActiveRecord::Base
	
	has_many :choices
	has_many :student_responses
	belongs_to :quiz
	
end
