module WorkshopApi
  module Helpers
    module MainHelper
      def declared_params
        @params ||= declared(params, include_missing: false)
      end

      def formatted_error!(code, status, message)
        message = { code: code, message: message }
        error!(message, status)
      end
    end
  end
end