class AddDateOpenedToAccounts < ActiveRecord::Migration[5.1]
  def change
    add_column :accounts, :date_opened, :datetime
  end
end
