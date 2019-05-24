class ReservationPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    return true
  end

  def confirm?
    record.campsite.user == user
  end

  def decline?
    record.campsite.user == user
  end
end
