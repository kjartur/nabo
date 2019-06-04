class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @tasks = Task.where(user_id: @user.id)
  end

  def edit
  end

  def update
  end
end
