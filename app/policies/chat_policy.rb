class ChatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      #scope
      # For a multi-tenant SaaS app, you may want to use:
      # scope.where(user: user)
      #Chat.involving(current_user)

      scope.involving(user)
    end
  end

  def show?
    # every one has access to the show of a dog
    true
  end

  def create?
    true
  end


end
