class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if user.save
      message = 'Your user was saved. You are ready to start chatting!'
      redirect_to @user, alert: message
    else
      @error = 'Sorry, that did not work'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  private

  def user
    @user ||= User.new
  end

  def user_params
    params.require(:user).permit(:name)
  end
end
