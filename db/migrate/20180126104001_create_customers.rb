class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.text :first_name
      t.text :last_name
      t.text :address
      t.integer :phone_number
      t.integer :user_id

      t.timestamps
    end
  end
end
