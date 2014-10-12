class StudentResponse < ActiveRecord::Base
	belongs_to :student
	belongs_to :choice
	belongs_to :question
end
