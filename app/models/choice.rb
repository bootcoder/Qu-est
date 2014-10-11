class Choice < ActiveRecord::Base
	
	has_many :student_responses
	has_many :students, through: :student_responses

	belongs_to :question
	
end
