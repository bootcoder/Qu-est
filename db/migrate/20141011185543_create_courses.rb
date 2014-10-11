class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.text :name
      t.text :description
      
      t.belongs_to :teacher

      t.timestamps
    end
  end
end
