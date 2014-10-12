class AddPasswordEncryptionFieldsToStudents < ActiveRecord::Migration
  def change
    add_column :students, :password_salt, :string
    add_column :students, :password_hash, :string
  end
end
