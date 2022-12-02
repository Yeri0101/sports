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

  def edit; end

  def update
    @review = Review.find(params[:id])
    @review.update(review_params)

    respond_to do |format|
      format.html { redirect_to @review.activity }
      format.text { render partial: "activities/activity_reviews", locals: { review: @review }, formats: [:html] }
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to activity_path(@review.activity), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(%i[comment])
  end
end
