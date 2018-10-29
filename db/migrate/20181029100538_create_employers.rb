class CreateEmployers < ActiveRecord::Migration[5.1]
  def change
    create_table :employers do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.belongs_to :company

      t.timestamps
    end
  end
end
