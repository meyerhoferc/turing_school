class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.references :student, foreign_key: true

      t.timestamps null: false
    end
  end
end
