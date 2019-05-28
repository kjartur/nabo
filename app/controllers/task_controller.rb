class TaskController < ApplicationController
  def new
    @task = Task.new
  end

  def show
    @task = Task
  end

  def edit
  end

  def create
  end
end
