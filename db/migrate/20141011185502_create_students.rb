class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :phone

      t.timestamps
    end
  end
end
