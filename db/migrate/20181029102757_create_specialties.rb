class CreateSpecialties < ActiveRecord::Migration[5.1]
  def change
    create_table :specialties do |t|
      t.string :title
      t.belongs_to :faculty

      t.timestamps
    end
  end
end
