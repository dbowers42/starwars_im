class HomeController < ApplicationController
  before_action :set_users
  before_action :set_current_user, only: [:join, :leave]

  def index
    cookies.delete :screen_name
  end

  def join
    cookies.signed[:screen_name] = @current_user.screen_name

    @current_user.update(online: true) unless @current_user.nil?

    redirect_to :action => :chat
  end

  def chat
    @messages = Message.all.order('created_at DESC')
  end

  def leave
    @current_user.update(online: false)
    cookies.delete :screen_name
    redirect_to action: :index
  end

  def set_users
    @users = User.all
    @offline_users = User.where(online: false)
  end

  private

  def set_current_user
    screen_name = cookies.signed[:screen_name]
    @current_user = User.find_by(screen_name: screen_name)
    @current_user = User.find_by(id: params[:user][:user_id]) if @current_user.nil?
  end
end
