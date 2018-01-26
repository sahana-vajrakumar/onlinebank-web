class TransactionsController < ApplicationController

  before_action :check_if_logged_in

  def index
    @transactions = Transaction.all
  end

  def show
  @transaction = Transaction.find params[:id]
  end

  def new
    @transaction = Transaction.new
    @account = Account.find params[:account_id]

    # if params[:type] == 'from'
    #
    # else
    #   # assume it's "to"
    # end
    #
  end


    def create
      # form submits here

      account = Account.find_by( id: params[:account_id] )

      if account.present?

        # make sure the account belongs to the logged-in user
        redirect_to root_path unless account.user = @current_user

        transaction = Transaction.create transaction_params
        transaction.date_opened = Date.today
      



        if transaction.persisted?




          transaction.from_account.decrement!('balance' , transaction[:ammount])
          transaction.to_account.increment!('balance' , transaction[:ammount])






           # raise 'hell'

          # add/subtract the amount FROM the from_account_id, and ADD it to
          # the to_account_id
          # transaction.from_account.update balance:

          redirect_to account

        else
          # validation error?
          flash[:errors] = transaction.errors.full_messages
          redirect_to new_account_transaction_path( account )
        end
      else
        # account not found
        redirect_to @current_user
      end


    end


private

# "strong params" for the work form submit - only let through the fields
# which we expect (i.e. the table fields the user is allowed to edit)
def transaction_params
  params.require(:transaction).permit( :ammount, :from_account_id, :to_account_id, :description )
end


end
