module WorkshopApi
  module Helpers
    module AuthenticationHelper
      def current_user
        @current_user
      end

      def unauthorized!
        formatted_error!('NOT_AUTHORIZED', 401, 'Invalid email or password')
      end

      def authenticate
        decoded_token = JWT.decode(
          headers['Authorization'],
          Rails.application.secrets.secret_key_base,
          true,
          algorithm: 'HS256'
        )&.first&.with_indifferent_access
        @current_user = User.find(decoded_token.try(:dig, :user_id))
      rescue JWT::DecodeError, ActiveRecord::RecordNotFound
        unauthorized!
      end
    end
  end
end
