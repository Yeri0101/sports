class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user: user)
    end
  end

  def create?
    right_user = user == host || user == client

    right_user
  end

  def destroy?
    right_user = user == host || user == client

    right_user
  end

  private

  def host
    booking.activity.user
  end

  def client
    booking.user
  end

  def booking
    @booking ||= record
  end

  def show?
    true
  end
end
