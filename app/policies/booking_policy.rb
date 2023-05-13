class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user:)
    end
  end

  def create?
    !host_user? && !Booking.exists?(activity: booking.activity, user:)
  end

  def destroy?
    participant_user?
  end

  private

  def host_user?
    user == host
  end

  def participant_user?
    user == participant
  end

  def host
    booking.activity.user
  end

  def participant
    booking.user
  end

  def booking
    @booking ||= record
  end

  def show?
    true
  end
end
