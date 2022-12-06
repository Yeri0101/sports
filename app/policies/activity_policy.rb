class ActivityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # scope.all
      scope.where(user_id: user.id)
    end
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    true
  end

  def destroy?
    right_user = user == host || user == client

    right_user
  end

  private

  def host
    activity.user
  end

  def activity
    @activity ||= record
  end
end
