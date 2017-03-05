class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :nearest_city
      t.string :distance
      t.string :population
      t.references :category, foreign_key: true
      t.text :description
      t.string :keywords

      t.timestamps
    end
  end
end
