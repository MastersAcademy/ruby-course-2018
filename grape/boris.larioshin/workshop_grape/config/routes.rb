Rails.application.routes.draw do
  mount WorkshopApi::ApiBase => '/'
  mount GrapeSwaggerRails::Engine => '/swagger'
end
