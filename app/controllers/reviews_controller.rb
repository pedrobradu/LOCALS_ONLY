class ReviewsController < ApplicationController
  include ActionView::RecordIdentifier

  def new
    @review = Review.new
  end


  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)
    @review.activity = @activity
    @review.user = current_user
    if @review.save
      redirect_to activity_path(@activity, anchor: "reviews")
      # redirect_to activity_path(@activity)
    else
      flash[:alert] = "Something went wrong."
      render :new
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to activity_path(@review.activity), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:content, :value, :rating)
  end
end
