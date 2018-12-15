class ChangeRoleTypeInUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :students, :role, :string
    add_column :students, :roles, :string
  end
end
