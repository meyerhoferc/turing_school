class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :current_address
      t.string :permanent_address

      t.timestamps null: false
    end
  end
end
