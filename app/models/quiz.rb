class Quiz < ActiveRecord::Base
	
	has_many :questions

	has_many :student_quizzes
	has_many :students, through: :student_quizzes

	belongs_to :course

end
