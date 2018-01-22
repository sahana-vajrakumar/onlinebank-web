class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.text :description
      t.integer :ammount
      t.integer :account_id

      t.timestamps
    end
  end
end
