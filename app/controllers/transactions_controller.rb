class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def show
  @transaction = Transaction.find params[:id]
  end

  def new
    @transaction = Transaction.new
  end

  def create
    
  end
end
