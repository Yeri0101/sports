class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    is_participant = Booking.exists?(activity: review.activity, user: review.user)
    is_not_host = user != host
    is_participant && is_not_host
  end

  def destroy?
    user == reviewer
  end

  private

  def host
    review.activity.user
  end

  def reviewer
    review.user
  end

  def review
    @review ||= record
  end
end
