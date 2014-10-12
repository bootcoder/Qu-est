class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :password
      t.boolean :teacher_access

      t.timestamps
    end
  end
end
