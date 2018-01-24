class AddAccountNumberToAccount < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :accountnumber, :string
  end
end
