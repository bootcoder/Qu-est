class StudentResponses < ActiveRecord::Migration
  def change
  	create_table :student_responses, id: false do |t|
  		t.integer :student_id
  		t.integer :choice_id
  	end
  end
end

