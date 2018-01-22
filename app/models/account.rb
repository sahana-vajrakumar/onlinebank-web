class Account < ApplicationRecord
  belongs_to :user, optional: true
  # has_many :transactions
  has_many :from_transactions, class_name: 'Transaction', foreign_key: :from_account_id
  has_many :to_transactions,   class_name: 'Transaction', foreign_key: :to_account_id
end
