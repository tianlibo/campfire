# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      logger.debug cookies.as_json
      logger.debug request.methods
      logger.debug request.url
      logger.debug request.headers.methods
      logger.debug request.headers["X_Custom_Header"]
      logger.debug request.headers["Content-Type"]
      logger.debug request.headers.to_h.keys
      logger.debug request.headers["HTTP_VERSION"]
      logger.debug request.headers["HTTP_USER_AGENT"]
      logger.debug request.headers["GATEWAY_INTERFACE"]
      # self.connect_user = find_verified_user
    end

    def disconnect
      logger.debug 'xxxxxxxxx'
    end

    # protected
    #   def find_verified_user
    #     logger.debug request.as_json
    #     if current_user = User.find_by(id:cookies.signed[:user_id])
    #       current_user
    #     else
    #       reject_unauthorized_connection
    #     end
    #   end
  end
end
