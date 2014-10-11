class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.text :body
      t.boolean :correct

      t.timestamps
    end
  end
end
