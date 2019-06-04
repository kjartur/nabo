class OffersController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    @offers = current_user.offers
  end

  def show
    @offer = Offer.find(params[:id])
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
    @offer = Offer.new(offer_params)
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

    redirect_to dashboard_path

  end



  def offer_params
    params.require(:offer).permit(:comments, :id)
  end
end
