module WorkshopApi
  module Entities
    module UserEntity
      class Base < Grape::Entity
        expose :id
        expose :email
        expose :created_at
      end

      class Me < Base
        expose :secret_data, as: :some_secret_data
        # expose :some_secret_data, &:secret_data
      end
    end
  end
end