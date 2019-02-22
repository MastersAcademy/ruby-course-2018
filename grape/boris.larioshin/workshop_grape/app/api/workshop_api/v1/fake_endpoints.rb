module WorkshopApi
  module V1
    class FakeEndpoints < WorkshopApi::V1::BaseV1
      namespace :fake do
        get :test do
          { message: 'works_well' }
        end
      end
    end
  end
end
