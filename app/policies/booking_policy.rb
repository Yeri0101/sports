class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user_id: user.id)
    end
  end

  def create?
    right_user = user == host || user == client

    right_user
  end

  def destroy?
    right_user = user == host || user == client

    right_user # && booking.pending?
  end

  private

  def host
    booking.activity.user
  end

  def client
    booking.client
  end

  def booking
    @booking ||= record
  end
end
