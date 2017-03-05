class CreateFinancialInformations < ActiveRecord::Migration[5.0]
  def change
    create_table :financial_informations do |t|
      t.date :last_reported
      t.decimal :revenue
      t.decimal :income
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
