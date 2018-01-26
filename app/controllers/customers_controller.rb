class CustomersController < ApplicationController

  # before_action :check_if_logged_in

  def home
  end

  # CREATE

  def new
    # blank form
    @customer = Customer.new
  end



  # READ

  def index
    @customers = Customer.all
  end

  def show
    @customer = @current_user.customer

  end


  # UPDATE

  def edit
    @customer = @current_user.customer
  end


  def create
    user = User.find_by( id: params[:user_id] )
    customer = Customer.new customer_params

    customer.user = @current_user
    customer.save
    redirect_to @current_user


  end

  def update
    customer = @current_user.customer
    customer.update customer_params
    redirect_to customer_path
  end

  # def destroy
  #   Cus.destroy params[:id]
  #   redirect_to accounts_path
  # end

  private

  # "strong params" for the work form submit - only let through the fields
  # which we expect (i.e. the table fields the user is allowed to edit)
  def customer_params
    params.require(:customer).permit( :first_name, :last_name, :user_id, :address, :phone_number  )
  end


end
