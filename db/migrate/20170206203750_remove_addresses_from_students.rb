class RemoveAddressesFromStudents < ActiveRecord::Migration[5.0]
  def change
    remove_column :students, :current_address, :string
    remove_column :students, :permanent_address, :string
  end
end
