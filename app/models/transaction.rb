class Transaction < ApplicationRecord
  # has_one :account , as: "from"
  # has_one :account , as: "to"


  # has_one :account , :class_name => 'Account' , :foreign_key => :from_account_id
  # has_one :account , :class_name => 'Account' , :foreign_key => :to_account_id

  belongs_to :from_account , class_name: 'Account', optional: true
  belongs_to :to_account , class_name: 'Account', optional: true
end
