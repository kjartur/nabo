class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @tasks = Task.all
    @user = current_user
  end

  def show
    @user = current_user
    @tasks = Task.where(user_id: @user.id)
  end
end
