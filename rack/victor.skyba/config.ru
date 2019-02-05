require 'json'
require_relative 'app/models/pet'

HEADERS = {
    'Access-Control-Allow-Methods' => '*',
    'Access-Control-Allow-Origin' => '*',
    'Access-Control-Allow-Headers' => '*',
    'Content-Type' => 'application/json'
}

def respond_with(status, hash)
  [status, HEADERS, [hash.to_json]]
end

application = proc do |env|
  begin
    @entity ||= Pet.new

    if env['PATH_INFO'] == '/api/v1/' && env['REQUEST_METHOD'] == 'GET'
      respond_with(200, entity: @entity.to_json)
    elsif env['PATH_INFO'] == '/api/v1/rest' && env['REQUEST_METHOD'] == 'POST'
      @entity.rest
      respond_with(200, entity: @entity.to_json)
    elsif env['PATH_INFO'] == '/api/v1/feed' && env['REQUEST_METHOD'] == 'POST'
      @entity.feed
      respond_with(200, entity: @entity.to_json)
    elsif env['PATH_INFO'] == '/api/v1/play' && env['REQUEST_METHOD'] == 'POST'
      @entity.play
      respond_with(200, entity: @entity.to_json)
    else
      respond_with(404, error: true, message: 'Not found')
    end
  rescue StandardError => e
    respond_with(500, error: true, message: e.message)
  end
end

run application
