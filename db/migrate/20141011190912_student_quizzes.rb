class StudentQuizzes < ActiveRecord::Migration
  def change
  	create_table :student_quzzes, id: false do |t|
  		t.belongs_to :quiz
  		t.belongs_to :student
  	end
  end
end