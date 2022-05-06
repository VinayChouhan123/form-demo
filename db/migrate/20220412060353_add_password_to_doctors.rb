class AddPasswordToDoctors < ActiveRecord::Migration[6.0]
  def change
    add_column :doctors, :password, :text
  end
end
