class StudentQuiz < ActiveRecord::Base
	belongs_to :students
	belongs_to :quizzes
end
