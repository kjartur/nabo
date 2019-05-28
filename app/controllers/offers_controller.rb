class OffersController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    @offers = current_user.offers
  end

  def show
  end

  def new
    @user = current_user
    @task = Task.find(params[:task_id])
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    @offer.task = @task
    if @offer.save
      redirect_to confirmed_path
    else
      render :new
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:state)
  end
end
