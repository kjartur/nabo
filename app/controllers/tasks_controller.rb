class TasksController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @tasks = Task.where.not(latitude: nil, longitude: nil).order(created_at: :desc)
    @markers = @tasks.map do |task|
      {
        lat: task.latitude,
        lng: task.longitude,
        infoWindow: render_to_string(partial: "shared/infowindow", locals: { task: task })
      }
    end
  end

  def new
    @task = Task.new
  end

  def show
    @offer = Offer.new
    @task = Task.find(params[:id])
    @no_offers = @task.offers.where( user_id: current_user.id).empty? unless current_user.nil?
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
      redirect_to task_path(@task)
    else
      render 'tasks/new'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to dashboard_path
  end

  # def complete
  #   @task = Task.find(params[:task_id])
  #   @task.update(completed: true)
  #   @owner = @task.user
  #   @owner.coins -= @task.amount_coins
  #   @owner.save
  #   @helper = @task.offers.where(state: "booked").first.user
  #   # Make link unclickable when state is (not book)
  #   @helper.coins += @task.amount_coins
  #   @helper.save

  #   @offer_done = Offer.find(params[:id])
  #   @offer_done.state = "done"
  #   @offer_done.save

  #   redirect_to dashboard_path
  # end

  def completed?

  end



  private

  def task_params
    params.require(:task).permit(:address, :date, :description, :amount_coins, :title, :photo, :post_code, :completed)
  end

end
