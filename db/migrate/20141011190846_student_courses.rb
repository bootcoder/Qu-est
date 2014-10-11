class StudentCourses < ActiveRecord::Migration
  def change
  	create_table :student_courses, id: false do |t|
  		t.belongs_to :student
  		t.belongs_to :course
  	end
  end
end