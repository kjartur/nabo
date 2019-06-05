class DashboardsController < ApplicationController

  def show
    @tasks = current_user.tasks
    @offers = current_user.offers

    @offers.each do |offer|
    @task = Task.find(id = offer.task_id)
    end
    # @offers.each do |offer|
    #   @user = User.find(task_id=offer.task_id)
    # end
  end

end
