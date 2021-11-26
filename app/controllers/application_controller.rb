class ApplicationController < ActionController::Base
    include Pundit

    rescue_from ActiveRecord::RecordNotFound, with: :record_not_found

  private
    def record_not_found
      render plain: "Something went wrong ", status: 404
    end
end
