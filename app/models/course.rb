class Course < ActiveRecord::Base
	
	has_many :quizzes

	has_many :student_courses
	has_many :students, through: :student_courses
	
	belongs_to :teacher

end
