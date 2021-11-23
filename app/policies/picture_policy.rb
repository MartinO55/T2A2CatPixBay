class PicturePolicy < ApplicationPolicy
    def edit?
        if user
            user.id == picture.
        end
    end


    def update?
        edit?
    end

    def destroy?
        edit?
    end
      
  end