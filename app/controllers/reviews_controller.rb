class ReviewsController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @activity = Activity.find(params[:activity_id])
    @review = Review.new(review_params)

    @review.activity = @activity
    @review.user = current_user

    if @review.save
      redirect_to @activity
    else
      render "activities/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(%i[comment])
  end
end
