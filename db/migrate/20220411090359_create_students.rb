class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name
      t.text :description
      t.integer :class
      t.string :subject
      t.string :medium
      t.string :country

      t.timestamps
    end
  end
end
