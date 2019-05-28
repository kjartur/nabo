class ReviewsController < ApplicationController
  def new
    @user = current_user
    @offer = Offer.find(params[:offer_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.offer = Offer.find(params[:offer_id])
    @review.save
  end

  def edit
  end

  def upon
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end

