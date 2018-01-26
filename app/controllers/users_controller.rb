class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.create user_params
    if user.persisted?
      # user successfully created, redirect to profile page for this user
      session[:user_id] = user.id
      # redirect_to user_path user
      redirect_to new_customer_path
    else
      # error creating user (probably a validation error)
      flash[:errors] = user.errors.full_messages
      redirect_to new_user_path
    end
  end

  def show
    @user = User.find params[:id]

  end

  def edit
    @user = User.find params[:id]
  end

  def update
  end



  def destroy
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
