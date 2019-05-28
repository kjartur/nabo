class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end


  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to root_path
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

  private

  def task_params
    params.require(:task).permit(:address, :date, :description, :amount_coins, :title, :post_code)
  end
end
