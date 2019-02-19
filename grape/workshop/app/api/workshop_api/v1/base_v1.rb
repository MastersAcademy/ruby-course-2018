module WorkshopApi
  module V1
    class BaseV1 < WorkshopApi::ApiBase
      extend ActionView::Helpers::TranslationHelper
      prefix 'api'
      version 'v1', using: :accept_version_header

      helpers WorkshopApi::Helpers::MainHelper

      mount Users

      add_swagger_documentation api_version: 'v1', hide_documentation_path: true
    end
  end
end
