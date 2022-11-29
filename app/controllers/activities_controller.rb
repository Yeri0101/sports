class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    activity = Activity.new(activity_params)
    activity.save
    redirect_to activitys_path
  end

  private

  def set_activity
    @activity = activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :details, :completed)
  end
end
