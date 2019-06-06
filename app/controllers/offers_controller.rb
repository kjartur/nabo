class OffersController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    @offers = current_user.offers
  end

  def show
    @offer = Offer.find(params[:id])
    @task = @offer.task
  end

  def new
    @user = current_user
    @task = Task.find(params[:task_id])
    if (@task.user_id === @user.id)
      redirect_to dashboard_path
    end
    @offer = Offer.new
  end

  def create
    @task = Task.find(params[:task_id])
    @offer = Offer.new(check_params)
    @offer.user = current_user
    @offer.task = @task
    @offer.state = "pending"
    if @offer.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def destroy
    @offer = Offer.find(params[:id])
    @offer.destroy
    redirect_to dashboard_path
  end

  def accept
    @offer_accept = Offer.find(params[:id])
    @offer_accept.state = "booked"
    @offer_accept.save

    task_id = Offer.find(params[:id]).task_id
    task = Task.find(task_id)
    task.offers.each do |offer|
      offer.state = "rejected" unless offer.state == "booked"
      offer.save
    end
    # @offers_not_accept = Offer.find(params[:id])
    # @no_offers = @task.offers.where( user_id: current_user.id).empty?
    redirect_to task_path(task)
  end

  def done
    @task = Task.find(params[:task_id])
    @task.update(completed: true)
    @owner = @task.user
    @owner.coins -= @task.amount_coins
    @owner.save
    @helper = @task.offers.where(state: "booked").first.user
    # Make link unclickable when state is (not book)
    @helper.coins += @task.amount_coins
    @helper.save


    @offer_done = Offer.find(params[:id])
    @offer_done.state = "done"
    @offer_done.save

    redirect_to dashboard_path
  end

private

  def myoffers
    @myoffers = current_user.incoming_offers
  end

  def check_params
    params.require(:offer).permit(:comments, :id)
  end

end
