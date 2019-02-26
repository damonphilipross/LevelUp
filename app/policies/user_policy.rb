class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def profile?
    record.user == user
    # Only restaurant creator can update it
  end
end
