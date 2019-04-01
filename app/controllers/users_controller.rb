class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def show
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = t(".welcome_sample_app")
      redirect_to @user
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def find_by_id
    @user = User.find_by(id: params[:id])
    if @user.nil?
      flash[:danger] = t(".controllers.invalid_user")
      redirect_to root_path
    end
  end
end
