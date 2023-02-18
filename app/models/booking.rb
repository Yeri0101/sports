class Booking < ApplicationRecord
  belongs_to :activity
  belongs_to :user

  private

  def self.ransackable_associations(auth_object = nil)
    %w[activity user]
  end

  def self.ransackable_attributes(auth_object = nil)
    %w[activity_id created_at id updated_at user_id]
  end
end
