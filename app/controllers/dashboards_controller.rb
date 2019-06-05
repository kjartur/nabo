class DashboardsController < ApplicationController

  def show
    @tasks = current_user.tasks
    @offers = current_user.offers
  end

end
