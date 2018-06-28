class WalkPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(dogwalker: user)
      raise
    end
  end

  def show?
    true
  end

  def create?
    true
  end
end
