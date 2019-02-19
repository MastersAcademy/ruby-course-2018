module WorkshopApi
  module Helpers
    module MainHelper
      def declared_params
        @params ||= declared(params, include_missing: false)
      end

      def current_user
        @current_user
      end
    end
  end
end