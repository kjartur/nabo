class OffersController < ApplicationController
  def index
    @tasks = Task.where(user: current_user)
    @offers = current_user.offers
  end

  def show
    @offer = Offer.find(offer_params)
  end

  def new
    @user = current_user
    @task = Task.find(params[:task_id])
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



  private

  def offer_params
    params.require(:offer).permit(:comments)
  end
end
