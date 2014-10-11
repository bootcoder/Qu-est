class StudentQuizzes < ActiveRecord::Migration
  def change
  	create_table :student_quzzes, id: false do |t|
  		t.integer :quiz_id
  		t.integer :student_id
  	end
  end
end