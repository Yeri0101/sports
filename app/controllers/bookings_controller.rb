class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
    @activity = Activity.find(params[:activity_id])
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.activity = @activity

    if @booking.save
      redirect_to activity_path(@activity), notice: "The booking has been made correctly"
    else
      render :new, status: :see_other
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy

    redirect_to activity_path(@booking.activity)
  end

  private

  def set_booking
    @activity = Activity.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(%i[activity_id user_id])
  end

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "must be after the start date")
    end
  end
end
