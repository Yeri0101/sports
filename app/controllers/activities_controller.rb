class ActivitiesController < ApplicationController
  before_action :set_activity, only: %i[destroy edit show update]

  def search
    index
    render :index
  end

  def index
    @q = Activity.ransack(params[:query])
    @activities = @q.result(distinct: true)
  end

  def show
    @review = Review.new
    @booking = Booking.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)

    @activity.user = current_user

    if @activity.save
      redirect_to @activity, notice: "The creation of this activity has been successfully completed"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit; end

  def update
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
  end

  def activity_params
    params.require(:activity).permit(%i[address category description end_date image start_date name user_id])
  end
end
