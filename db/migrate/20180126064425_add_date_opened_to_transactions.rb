class AddDateOpenedToTransactions < ActiveRecord::Migration[5.1]
  def change
    add_column :transactions, :date_opened, :datetime
  end
end
