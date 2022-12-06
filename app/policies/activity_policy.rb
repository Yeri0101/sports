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
