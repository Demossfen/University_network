class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.belongs_to :faculty
      t.timestamps
    end
  end
end
