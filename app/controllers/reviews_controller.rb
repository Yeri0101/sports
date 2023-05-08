class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)

    @review.activity = @activity

    @review.user = current_user

    authorize @review

    if @review.save
      redirect_to @activity
    else
      @booking = Booking.new(activity: @activity, user: current_user)

      render "activities/show", status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])

    authorize @review

    @review.destroy

    redirect_to activity_path(@review.activity), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(%i[comment])
  end
end
