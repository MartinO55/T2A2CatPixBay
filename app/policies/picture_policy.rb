class PicturePolicy < ApplicationPolicy
    def edit?
        if user
            user.id == record.profile_id
        end
    end


    def update?
        edit?
    end

    def destroy?
        edit?
    end
      
  end