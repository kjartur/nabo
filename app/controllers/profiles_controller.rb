class ProfilesController < ApplicationController
  def show
    @user = current_user
    if (@user.bio == nil)
      redirect_to profiles_edit_path(@user)
    else
      redirect_to show_pages_path(@user)
    end
  end

  def edit
  end

  def update
  end
end
