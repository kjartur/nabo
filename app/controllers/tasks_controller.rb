class TasksController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def create
    # Task.create(task_params)

    @task = Task.new(task_params)
    @task.user = current_user
    if @task.save
      redirect_to root_path
    else
      render 'tasks/new'
    end
  end

  def delete
  end
end
