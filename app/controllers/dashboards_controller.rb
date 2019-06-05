class DashboardsController < ApplicationController

  def show
    @tasks = current_user.tasks
    @offers = current_user.offers
    # @tasks_array = []

    # @offers.each do |offer|
    #   task = Task.find(offer.task_id)
    #   @tasks_array << task
    # end
  end

    # def find_profile_pic(offer)
    #   task = Task.find(offer.task_id)
    #   user_id = task.user_id
    #   User.find(user_id).avatar
    #   raise
    # end

    # @offers.each do |offer|
    #   @user = User.find(task_id=offer.task_id)
    # end

end
