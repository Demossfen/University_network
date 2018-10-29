class CreateStudentSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :student_subjects do |t|
      t.integer :mark
      t.belongs_to :student
      t.belongs_to :subject
      t.timestamps
    end
  end
end
