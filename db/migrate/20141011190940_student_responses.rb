class StudentResponses < ActiveRecord::Migration
  def change
  	create_table :student_responses do |t|
  		t.belongs_to :student
  		t.belongs_to :choice
  	end
  end
end

