class AddPasswordEncryptionFieldsToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :password_salt, :string
    add_column :teachers, :password_hash, :string
  end
end
