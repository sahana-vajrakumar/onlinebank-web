class AddAccountFieldsToTransaction < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :from_account_id, :integer
    add_column :transactions, :to_account_id, :integer
  end
end
