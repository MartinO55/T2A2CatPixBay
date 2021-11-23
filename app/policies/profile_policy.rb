class ProfilePolicy < ApplicationPolicy
    def edit?
        if user
            user.id ==record.user_id
        end


    end

    def update?
        edit?
      end
  end