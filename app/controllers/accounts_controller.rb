class AccountsController < ApplicationController

  def home
  end

  # CREATE

  def new
    # blank form
    @account = Account.new
  end

  def create
    user = User.find_by( id: params[:user_id] )
    account = Account.create account_params
        redirect_to @current_user


  end

  # READ

  def index
    @accounts = Account.all
  end

  def show
    @account = Account.find params[:id]
  end


  # UPDATE

  def edit
    @account = Account.find params[:id]
  end

  # def update
  #   account = Account.find params[:id]
  #   account.update account_params
  #   redirect_to account
  # end

  def destroy
    Account.destroy params[:id]
    redirect_to accounts_path
  end

  private

  # "strong params" for the work form submit - only let through the fields
  # which we expect (i.e. the table fields the user is allowed to edit)
  def account_params
    params.require(:account).permit( :balance, :account_type )
  end


end
