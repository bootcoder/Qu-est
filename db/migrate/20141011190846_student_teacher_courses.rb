class StudentTeacherCourses < ActiveRecord::Migration
  def change
  	create_table :student_teacher_courses, id: false do |t|
  		t.integer :student_id
  		t.integer :teacher_id
  		t.integer :course_id
  	end
  end
end