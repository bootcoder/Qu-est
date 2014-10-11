class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.text :first_name
      t.text :last_name
      t.text :email
      t.text :phone
      t.text :password

      t.timestamps
    end
  end
end
