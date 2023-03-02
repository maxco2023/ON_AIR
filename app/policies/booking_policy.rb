class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def destroy?
    record.user == user || record.club.user == user
  end

  def accepted?
    record.club.user == user
  end

  def validated?
    record.club.user == user
  end

  def cancelled?
    record.club.user == user
  end

  def declined?
    record.club.user == user
  end
end
