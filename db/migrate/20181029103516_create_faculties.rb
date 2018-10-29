class CreateFaculties < ActiveRecord::Migration[5.1]
  def change
    create_table :faculties do |t|
      t.string :title
      t.belongs_to :university

      t.timestamps
    end
  end
end
