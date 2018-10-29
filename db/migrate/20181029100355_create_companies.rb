class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :site_link
      t.belongs_to :city

      t.timestamps
    end
  end
end
