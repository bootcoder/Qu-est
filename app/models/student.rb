class Student < ActiveRecord::Base
	
	has_many :student_courses
	has_many :courses, through: :student_courses

	has_many :student_quizzes
	has_many :quizzes, through: :student_quizzes

	has_many :student_responses
	has_many :choices, through: :student_responses

end
