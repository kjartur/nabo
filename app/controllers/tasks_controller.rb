class TasksController < ApplicationController
  def new
    @task = Task.new
  end

  def show
    @task = Task.find(task_params)
  end

  def edit
    @task = Task.find(task_params)
  end

  def create
    Task.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:address, :date, :description, :amount_coins)
  end
end
