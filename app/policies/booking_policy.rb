class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      # scope.all
      scope.where(user_id: user.id)
    end
  end

  def create?
    true
  end

  def destroy?
    record.user == user
  end
end
