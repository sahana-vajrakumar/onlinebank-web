class ChangeAccountBalanceToCurrencyType < ActiveRecord::Migration[5.1]
  def change
    remove_column :accounts, :balance
    add_column :accounts, :balance, :decimal, :precision => 8, :scale => 2

  end
end
