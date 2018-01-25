class AccountsController < ApplicationController

  before_action :check_if_logged_in

  def home
  end

  # CREATE

  def new
    # blank form
    @account = Account.new
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


  def create
    user = User.find_by( id: params[:user_id] )
    account = Account.new account_params
    account.date_opened = Date.today
    characters = ('a'..'z').to_a + (0..9).to_a + (0..9).to_a + (0..9).to_a
    char = characters.sample 10
    account.accountnumber = char.join
    account.user = @current_user
    account.save
    redirect_to @current_user


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
    params.require(:account).permit( :accountnumber, :user_id, :balance, :account_type  )
  end


end
