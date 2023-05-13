class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[destroy edit show update]

  def index
    @activities = policy_scope(Activity)
    @q = @activities.ransack(params[:query])
    @activities = @q.result(distinct: true)
  end

  def me
    @activities = policy_scope(Activity).where(user: current_user)
    @q = @activities.ransack(params[:query])
    @activities = @q.result(distinct: true)
    authorize @activities
  end

  def show
    @review = Review.new(activity: @activity, user: current_user)
    @booking = Booking.new(activity: @activity, user: current_user)
    @message = Message.new
    authorize @activity
    @marker = {
      lat: @activity.latitude,
      lng: @activity.longitude
    } if @activity.geocoded?
  end

  def new
    @activity = Activity.new
    authorize @activity
  end

  def create
    @activity = current_user.activities.new(activity_params)
    authorize @activity
    if @activity.save
      redirect_to @activity
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    authorize @activity
    @activity.update(activity_params)
    redirect_to @activity
  end

  def destroy
    @activity = Activity.find(params[:id])
    @activity.destroy
    redirect_to activities_path, status: :see_other
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
    authorize @activity
  end

  def activity_params
    params.require(:activity).permit(
      %i[
        address
        category
        city
        country
        description
        end_date
        image
        latitude
        longitude
        name
        postcode
        state
        start_date
      ]
    )
  end
end
