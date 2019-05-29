class CompleteTasksController < ApplicationController
  def update
    @task = Task.find(params[:id])
    @task.update(completed: true)
    owner = @task.user
    owner.coins -= @task.amount_coins
    owner.save
    helper = @task.offers.where(state: "booked").first.user
    helper.coins += @task.amount_coins
    helper.save
  end
end
