class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.date :birth_date
      t.integer :year_of_study
      t.string :role
      t.belongs_to :group
      t.timestamps
    end
  end
end
