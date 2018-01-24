class User < ApplicationRecord
  has_many :accounts
  has_many :from_transactions, through: :accounts
  has_many :to_transactions, through: :accounts


  def all_transactions
    self.from_transactions + self.to_transactions
  end

  has_secure_password

end
