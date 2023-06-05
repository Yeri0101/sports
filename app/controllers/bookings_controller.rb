class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    @q = @bookings.ransack(params[:query])
    @bookings = @q.result(distinct: true)
  end

  def show
    @booking = Booking.new
    authorize @booking
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.activity = @activity
    authorize @booking
    if @booking.save
      redirect_to @activity,
                  notice: "Your booking has been successfully confirmed",
                  status: :see_other
    else
      render "activities/show", status: :see_other
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.destroy
    redirect_to bookings_path,
                notice: "Your booking has been successfully cancelled",
                status: :see_other
  end

  private

  def set_booking
    @activity = Activity.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(%i[activity_id user_id])
  end
end
