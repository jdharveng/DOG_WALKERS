class DogPolicy < ApplicationPolicy

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    # every one has access to the show of a dog
    true
  end

  def create?
    true
  end

  def update?
    user_is_owner_or_admin?
    # - record: the restaurant passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
   user_is_owner_or_admin?
  end

private

  def user_is_owner_or_admin?
    user.admin || record.user == user
  end

end
