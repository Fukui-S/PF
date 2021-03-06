class UsersController < ApplicationController

  def index

  end

  def show
    @user = User.find(params[:id])
    @post = @user.post.page(params[:page]).reverse_order

  end

  def edit
    redirect_to user_path(params[:id]) if current_user.blank? || current_user.id != params[:id].to_i

    @user = User.find(params[:id])

  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)

  end

  private
  def user_params
    params.require(:user).permit(:name, :email)
  end

end
