class AddQuestionsRelationshipToStudentResponses < ActiveRecord::Migration
  def change
  	change_table :student_responses do |t|
      t.belongs_to :question
    end
  end
end
