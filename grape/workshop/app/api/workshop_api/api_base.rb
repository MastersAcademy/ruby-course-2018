require 'grape-swagger'
module WorkshopApi
  class ApiBase < Grape::API
    default_format :json

    helpers Pundit
    mount WorkshopApi::V1::BaseV1
  end
end