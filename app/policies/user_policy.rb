class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def profile?
    # We dont need to do this check, but because of the pundit callback we need to authorize the action
    user == record
    true
    # record.user == user
    # logged user can view profile creator ca
  end
end
