class AddColumnToStudents < ActiveRecord::Migration[6.0]
  def change
    add_column :students, :class_name, :integer
  end
end
