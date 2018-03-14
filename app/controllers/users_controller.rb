class UsersController < ApplicationController
  

  def index
    @user = User.all
  end

  def show
    @user = user.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(secure_params)
        redirect_to root_path, :notice => 'no problem'

    else
        redirect_to root_path, :alert => 'somethink goes wrong'
    end
  end

  private

  def secure_params
    params.require(:user).permit(:role)
  end
end
