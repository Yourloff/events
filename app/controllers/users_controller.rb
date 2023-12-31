class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update ]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_url(@user), notice: "Пользователь обновлен"
    else
      flash.each
      render :edit, notice: "Ошибка"
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
