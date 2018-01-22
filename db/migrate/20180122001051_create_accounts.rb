class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.text :balance
      t.text :account_type

      t.timestamps
    end
  end
end
