class CharacterPolicy < ApplicationPolicy
  class Scope < ApplicationPolicy::Scope
    def resolve
      user&.admin? ? scope.all : scope.where(user: user)
    end
  end

  def index?
    return true
  end

  def show?
    return true
  end

  def new
    return create?
  end

  def create?
    return user&.admin?
  end

  def update?
    return ser&.admin?
  end

  def destroy?
    return user&.admin?
  end
end
