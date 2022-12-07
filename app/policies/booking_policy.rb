class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end

  def create?
    !host_user?
  end

  def destroy?
    participant_user?
  end

  private

  def host_user?
    user == host
  end

  def participant_user?
    user == host
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
end
