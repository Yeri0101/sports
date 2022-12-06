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
    @review = Review.new
    @booking = Booking.new

    authorize @activity
  end

  def new
    @activity = Activity.new

    authorize @activity
  end

  def create
    @activity = current_user.activities.new(activity_params)

    authorize @activity

    if @activity.save
      redirect_to @activity, notice: "The creation of this activity has been successfully completed."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
    @activity.update(activity_params)

    authorize @activity

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
    params.require(:activity).permit(%i[address category city country description end_date image name postcode state start_date])
  end
end
