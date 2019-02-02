class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if user.save && CometChatService.new(user).create_user
      message = 'Your user was saved. You are ready to start chatting!'
      redirect_to @user, alert: message
    else
      message = 'Sorry, that did not work'
      redirect_to new_user_path, alert: message
    end
  end

  def show
    @user = User.find(params[:id])
    @users = CometChatService.new(user).fetch_users
    @app_id = ENV['COMETCHAT_APP_ID']
    @api_key = ENV['COMETCHAT_API_KEY']
  end

  private

  def user
    @user ||= User.new
  end

  def user_params
    params.require(:user).permit(:name)
  end
end