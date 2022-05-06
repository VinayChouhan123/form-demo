class RemoveClassToStudents < ActiveRecord::Migration[6.0]
  def change
    remove_column :students, :class, :integer
  end
end
