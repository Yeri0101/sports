class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user_id: user.id)
    end
  end

  def search?
    true
  end

  def create?
    Booking.exists?(activity: review.activity, user: review.user)
  end

  def update?
    review.user == user
  end

  def destroy?
    review.user == user
  end

  private

  def host
    review.activity.user
  end

  def client
    review.client
  end

  def review
    @review ||= record
  end
end
