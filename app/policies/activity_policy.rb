class ActivityPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def me?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def update?
    activity.user == user
  end

  def destroy?
    user == host || user == client
  end

  private

  def host
    activity.user
  end

  def activity
    @activity ||= record
  end
end
