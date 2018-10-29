class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.string :email
      t.belongs_to :faculty

      t.timestamps
    end
  end
end
