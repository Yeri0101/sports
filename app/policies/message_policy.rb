class MessagePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def show?
    true
  end

  def create?
    Booking.exists?(activity: message.activity, user: message.user)
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
