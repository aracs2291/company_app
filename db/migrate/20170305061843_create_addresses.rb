class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address_line
      t.string :city
      t.string :zip_code
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
